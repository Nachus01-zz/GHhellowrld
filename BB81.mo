model BB81
  Real x[4](start={0,0,0,0});
  Real a;
  Real b;
  Real c;
  Real p;
  Real q;
  Real r;
  Real u;
  Real y;
equation
  a=-0.93676;
  b=82.716;
  c=14.150;
  p=-3.7595;
  q=4.9671;
  r=56.791;
  der(x[1])=x[2];
  der(x[2])=b*sin(x[1])+a*x[4]+c*u;
  der(x[3])=x[4];
  der(x[4])=q*sin(x[1])+p*x[4]+r*u;
  y=r*x[1]-c*x[3];
  u=-((r*b*b-b*c*q)*x[1]-(r*a*b-a*c*q)*x[4])/(r*b*c-c*c*q);
end BB81;