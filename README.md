# poly3module

# Polygon Circuit

This circuit template checks that c is the multiplication of a and b.

## Components

* AND() - This component runs the AND gate.
* NOT() - This component runs the NOT gate.
* OR() - This component runs the OR gate.

## Usage

To use this circuit, we can create an instance of the `Polygon()` template and pass in the values for a and b. For example:

## Example

The following code shows an example of how to use the `Polygon()` template:

pragma circom 2.0.0;

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

component main = Polygon;

## Commands
npm i

npx hardhat circom

npx hardhat run scripts/deploy.ts
