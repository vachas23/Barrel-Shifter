module barrelshifter(out,in,sel);
    input [7:0] in;
    input [2:0] sel;
    output [7:0] out;
    wire [7:0]t,g;
    muxtwotoone muxtwotoone1(t[0],in[0],in[1],sel[2]);
    muxtwotoone muxtwotoone2(t[1],in[1],in[2],sel[2]);
    muxtwotoone muxtwotoone3(t[2],in[2],in[3],sel[2]);
    muxtwotoone muxtwotoone4(t[3],in[3],in[4],sel[2]);
    muxtwotoone muxtwotoone5(t[4],in[4],in[5],sel[2]);
    muxtwotoone muxtwotoone6(t[5],in[5],in[6],sel[2]);
    muxtwotoone muxtwotoone7(t[6],in[6],in[7],sel[2]);
    muxtwotoone muxtwotoone8(t[7],in[7],in[0],sel[2]);
    muxtwotoone muxtwotoone9(g[0],t[0],t[2],sel[1]);
    muxtwotoone muxtwotoone10(g[1],t[1],t[3],sel[1]);
    muxtwotoone muxtwotoone11(g[2],t[2],t[4],sel[1]);
    muxtwotoone muxtwotoone12(g[3],t[3],t[5],sel[1]);
    muxtwotoone muxtwotoone13(g[4],t[4],t[6],sel[1]);
    muxtwotoone muxtwotoone14(g[5],t[5],t[7],sel[1]);
    muxtwotoone muxtwotoone15(g[6],t[6],t[0],sel[1]);
    muxtwotoone muxtwotoone16(g[7],t[7],t[1],sel[1]);
    muxtwotoone muxtwotoone17(out[0],g[0],g[4],sel[0]);
    muxtwotoone muxtwotoone18(out[1],g[1],g[5],sel[0]);
    muxtwotoone muxtwotoone19(out[2],g[2],g[6],sel[0]);
    muxtwotoone muxtwotoone20(out[3],g[3],g[7],sel[0]);
    muxtwotoone muxtwotoone21(out[4],g[4],g[0],sel[0]);
    muxtwotoone muxtwotoone22(out[5],g[5],g[1],sel[0]);
    muxtwotoone muxtwotoone23(out[6],g[6],g[2],sel[0]);
    muxtwotoone muxtwotoone24(out[7],g[7],g[3],sel[0]);
endmodule