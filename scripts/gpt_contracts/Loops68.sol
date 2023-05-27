pragma solidity ^0.5.0;

contract loops68 {
    // declare a mapping of uint to uint
    mapping (uint => uint) public data;

    // define a function to generate a loop
    function generateLoop() public {
        // loop from 0 to 68
        for (uint i = 0; i < 69; i++) {
            // set the value of data[i] to i
            data[i] = i;
        }
    }
}