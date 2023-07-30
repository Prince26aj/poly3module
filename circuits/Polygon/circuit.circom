pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Polygon () {  
 // signal inputs
 signal input a;
 signal input b;

 // signals from gates
 signal x;
 signal y;

 // final signal output
 signal output q;

 // component gates used to create custom circuit
 component andGate = AND();
 component notGate = NOT();
 component orGate = OR(); 

 // circuit logic
 andGate.a <== a;
 andGate.b <== b;
 x <== andGate.x;

 notGate.in <== b;
 y <== notGate.y;

 orGate.a <== x;
 orGate.b <== y;
 q <== orGate.q;
     
}

template AND() {
    signal input a;
    signal input b;
    signal output x;

    x <== a * b;
}

template NOT() {
    signal input in;
    signal output y;

    
    y <== -in;
}

template OR() {
    signal input a;
    signal input b;
    signal output q;
    
    signal prince;

    
    prince <== a * b;
    q <== a + b - prince;
}

component main = Polygon();