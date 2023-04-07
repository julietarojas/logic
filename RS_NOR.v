//: version "2.0-b10"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
output Q;    //: /sn:0 {0}(123,104)(155,104){1}
//: {2}(159,104)(245,104){3}
//: {4}(157,106)(157,195)(95,195)(95,210)(105,210){5}
output notQ;    //: /sn:0 {0}(126,213)(145,213){1}
//: {2}(149,213)(245,213){3}
//: {4}(147,211)(147,121)(92,121)(92,106)(102,106){5}
input R;    //: /sn:0 {0}(53,101)(102,101){1}
input S;    //: /sn:0 {0}(50,215)(105,215){1}
//: enddecls

  //: IN g4 (R) @(51,101) /sn:0 /w:[ 0 ]
  //: joint g3 (notQ) @(147, 213) /w:[ 2 4 1 -1 ]
  //: joint g2 (Q) @(157, 104) /w:[ 2 -1 1 4 ]
  _GGNAND2 #(4) g1 (.I0(Q), .I1(S), .Z(notQ));   //: @(116,213) /sn:0 /w:[ 5 1 0 ]
  //: OUT g6 (Q) @(242,104) /sn:0 /w:[ 3 ]
  //: OUT g7 (notQ) @(242,213) /sn:0 /w:[ 3 ]
  //: IN g5 (S) @(48,215) /sn:0 /w:[ 0 ]
  _GGNAND2 #(4) g0 (.I0(R), .I1(notQ), .Z(Q));   //: @(113,104) /sn:0 /w:[ 1 5 0 ]

endmodule
//: /netlistEnd
