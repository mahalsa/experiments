module fa0_tb;
reg   a,b,c;
wire cout,sum;
integer i;
//reg error;
//integer successcount=0,failcount=0;

 fa0 dut(cout,sum,a,b,c);
// golden dut2(out,sum,a,b,c);
 
 initial begin
 for(i=0;i<16;i=i+1)
 begin
 {a,b,c}=i;
 #10;
 $display(a,b,c,":",{cout,sum});
 end
 end
 endmodule
