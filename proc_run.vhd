entity proc_run is
end entity;

architecture arch of proc_run is
    signal sig1 : bit := '0';
    signal sig2 : bit := '0';  -- Initializing sig2 outside the process
begin
    -- Toggling sig1 every 2 ns
    sig1 <= not sig1 after 2 ns;

    -- Process triggered by sig1
    process(sig1)
    begin
        sig2 <= not sig2 after 2 ns;  -- Toggling sig2
        report "IUS Digital Design is cool";  -- Reporting a message
    end process;
end arch;

