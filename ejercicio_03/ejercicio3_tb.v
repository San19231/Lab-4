

module testbench();

// Variables para probar el módulo sillyFunction
reg a1, b1, c1, d1;
wire y,y1,y2, y3;

tabla1 U2(a1, b1, c1, y);
tabla2 U3(a1, b1, c1, y1);
tabla3 u4(a1, b1, c1, d1, y2);
tabla4 u5(a1, b1, c1, d1, y3);
initial begin
  $display("Tabla 1 y 2");  
  $display("a b c | y1 | y2");
  $display("------|----|");
  $monitor("%b %b %b | %b |%b", a1, b1, c1, y,y1);
     a1 = 0; b1 = 0; c1 = 0;
  #1 a1 = 0; b1 = 0; c1 = 1;
  #1 a1 = 0; b1 = 1; c1 = 0;
  #1 a1 = 0; b1 = 1; c1 = 1;
  #1 a1 = 1; b1 = 0; c1 = 0;
  #1 a1 = 1; b1 = 0; c1 = 1;
  #1 a1 = 1; b1 = 1; c1 = 0;
  #1 a1 = 1; b1 = 1; c1 = 1;
end
initial begin
#10
  $display("Tabla 3 y 4");  
  $display("a b c d |y | y2");
  $display("--------|--|----");
  $monitor("%b %b %b %b |%b | %b", a1, b1, c1, d1,y2 ,y3);
    a1=0; b1 = 0; c1 = 0; d1 = 0;
  #1 b1 = 0; c1 = 0; d1 = 1;
  #1 b1 = 0; c1 = 1; d1 = 0;
  #1 b1 = 0; c1 = 1; d1 = 1;
  #1 b1 = 1; c1 = 0; d1 = 0;
  #1 b1 = 1; c1 = 0; d1 = 1;
  #1 b1 = 1; c1 = 1; d1 = 0;
  #1 b1 = 1; c1 = 1; d1 = 1;
  #1 a1=1;b1 = 0; c1 = 0; d1 = 1;
  #1 b1 = 0; c1 = 1; d1 = 0;
  #1 b1 = 0; c1 = 1; d1 = 1;
  #1 b1 = 1; c1 = 0; d1 = 0;
  #1 b1 = 1; c1 = 0; d1 = 1;
  #1 b1 = 1; c1 = 1; d1 = 0;
  #1 b1 = 1; c1 = 1; d1 = 1;
end
initial
  #50 $finish;

initial begin
  $dumpfile("ejercicio3_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
