module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    
    wire o_heater, o_aircon;
    
    assign o_aircon = ~mode & too_hot;
    assign o_heater = mode & too_cold;
    assign fan = o_heater | o_aircon | fan_on;
    assign heater = o_heater;
    assign aircon = o_aircon;

endmodule
