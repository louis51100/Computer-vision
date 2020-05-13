d_ref = 4;
f_ref = 400;
d1_ref = 4;
d2_ref = 20;
d1_ref = 4;
d2_ref = 20;
H1 = points.points_A(1,2) - points.points_A(2,2); %4
H2 = points.points_C(1,2) - points.points_C(2,2); %6
ratio = 2;

h1=f_ref*H1/d1_ref;
h1_new=h1;
h2=f_ref*H2/d2_ref;
h2_new=ratio*h1;

syms f pos;

eqns=[ f==(d1_ref-pos)*f_ref/d1_ref, f==ratio*f_ref*(d2_ref-pos)/d2_ref]; 
S=solve(eqns, [f pos]);
f=S.f
pos=S.pos


f=f_ref*(d1_ref-pos)/d1_ref
f=2(d2-pos)*f_ref/d2_ref