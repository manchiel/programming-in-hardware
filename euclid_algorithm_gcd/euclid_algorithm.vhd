library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity euclid_algorithm is
    port ( 
			  iCLK 		 : in  std_logic;
           iRST   	 : in  std_logic;
           iA 		     : in  std_logic_vector(15 downto 0);
           iB  	     : in  std_logic_vector(15 downto 0);
			  oGCD : out std_logic_vector(15 downto 0)

			  
			 );		  
end entity;

architecture Behavioral of euclid_algorithm is

	type tSTATE is (
	
    T0,T1,T2,T3,DONE
	 
	);

   signal        sSTATE		  :   tSTATE;
	signal        sNEXT_STATE :   tSTATE;
	signal        sAsel		  :	std_logic;
   signal        sBsel	     :   std_logic;
	signal		  sAMux	     :   std_logic_vector(15 downto 0);
	signal		  sBMux	     :   std_logic_vector(15 downto 0);
	signal		  sAEnable	  :   std_logic;
	signal		  sBEnable    :   std_logic;
	signal		  sA     	  :   std_logic_vector(15 downto 0);
	signal		  sB			  :   std_logic_vector(15 downto 0);	
	signal		  sOperation  :   std_logic;
	signal		  sResult     :   std_logic_vector(15 downto 0);
	signal		  sZeroSign   :   std_logic_vector(1 downto 0);
			  
begin

	--Control Unit (FSM)
	    
		
	 process (iCLK, iRST) begin
		if (iRST = '1') then
			sSTATE <= T0;
      elsif (rising_edge(iCLK)) then
			sSTATE <= sNEXT_STATE;
      end if;
    end process;
	 
	 
	 process (sSTATE,sZeroSign,iA,iB) begin
	 
		sNEXT_STATE <= sSTATE;
		
		case (sSTATE) is
			when T0 => 
				if((iA /= 0 ) and (iB /= 0) ) then
					sNEXT_STATE<= T1;
				else
					sNEXT_STATE<= T0;		
				end if;
			when T1 => 
				if(sZeroSign = "10") then
					sNEXT_STATE<= DONE;
				elsif(sZeroSign = "01") then
					sNEXT_STATE<= T2;
				elsif(sZeroSign = "00") then
					sNEXT_STATE<= T3;
				else 
					sNEXT_STATE<= T1;
				end if;
			when T2 =>
				sNEXT_STATE <= T1;
			when T3 =>
				sNEXT_STATE <= T1;
			when DONE =>
				sNEXT_STATE <= DONE;
			when others =>
				sNEXT_STATE <= T0;
		end case;
	end process;
	
	process(sSTATE) begin 
	
		sASel      <= '0';
      sBSel      <= '0';
      sAEnable   <= '0';
      sBEnable   <= '0';
      sOperation <= '0';

		case (sSTATE) is
			when T0 => 
				sASel      <= '1';
				sBSel      <= '1';
				sAEnable   <= '1';
				sBEnable   <= '1';
			when T1 => 
				sAEnable   <= '0';
				sBEnable   <= '0';
				sOperation <= '0';
			when T2 =>
				sBSel      <= '0';
				sAEnable   <= '0';
				sBEnable   <= '1';
				sOperation <= '1';
			when T3 =>
				sASel      <= '0';
				sAEnable   <= '1';
				sBEnable   <= '0';
				sOperation <= '0';
			when DONE =>
				sAEnable   <= '0';
				sBEnable   <= '0';
			when others =>
				sASel      <= '0';
				sBSel      <= '0';
				sAEnable   <= '0';
				sBEnable   <= '0';
				sOperation <= '0';
		end case;
	end process;
	
	--A MUX & B MUX
	
	sAMux <= iA when sAsel = '1' else sResult;
	sBMux <= iB when sBsel = '1' else sResult;
	
	--A Register & B Register
	
	process(iCLK,iRST) begin
		if(iRST = '1') then
			sA <= (others => '0');
      elsif rising_edge(iCLK) then
			if sAEnable = '1' then
				sA <= sAMux;
			end if;
		end if;
	end process;
	 
	 process(iCLK,iRST) begin
		if(iRST = '1') then
			sB <= (others => '0');
      elsif rising_edge(iCLK) then
			if sBEnable = '1' then
				sB <= sBMux;
			end if;
		end if;
	 end process;

	
	--ALU 
	
	process(sA,sB) begin
		if( sA = sB) then
			sZeroSign <= "10";
		elsif(sA > sB) then 
			sZeroSign <= "01";
			sResult <= sA - sB;
		else
			sZeroSign <= "00";
			sResult <= sB - sA;
		end if;
	end process;
	
	--Output
	
	oGCD <= sA; 

end architecture;
