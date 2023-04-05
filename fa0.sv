module fa0(cout,sum,a,b,c);
input  a,b,c;
output cout,sum;
wire abar,bbar,cbar;

not G8(cbar,c);
not G6(abar,a);
not G7(bbar,b);
xor G1(t1,abar,bbar);
xor G2(sum,t1,cbar);
and G3(p1,cbar,t1);
and G4(p2,bbar,abar);

or G5(cout,p1,p2);

endmodule
