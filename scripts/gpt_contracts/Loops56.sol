pragma solidity ^0.6.0;

contract loops56 {
  uint public counter;

  constructor() public {
    counter = 0;
  }

  function loop56() public {
    uint i;
    for (i = 0; i < 56; i++) {
      counter = counter + 1;
    }
  }

}