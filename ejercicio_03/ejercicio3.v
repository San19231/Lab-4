
module tabla1(input wire a,b,c, output wire y);

  assign y = ~a & ~c | a & c | ~b & ~c;
              
endmodule

module tabla2(input wire a,b,c, output wire y1);

  assign y1 = ~b;
              
endmodule
module tabla3(input wire a,b,c,d, output wire y2);

  assign y2 = ~a & ~b & ~c & ~d | a & b & ~c & ~d | a & ~b & c &~d | ~a & b & ~c & d | a & ~b & ~c & d| ~a & ~b & c & d | a & b & c & d | ~a & b & c & ~d;
              
endmodule
module tabla4(input wire a,b,c,d, output wire y3);

  assign y3 = a & ~d |b & d | a & c;
endmodule