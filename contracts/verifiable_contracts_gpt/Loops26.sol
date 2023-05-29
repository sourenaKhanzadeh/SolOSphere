pragma solidity ^0.6.0;

contract Loops26 {
    uint public counter;

    constructor() public {
        counter = 0;
    }

    function loop() public {
        for (uint i = 0; i < 26; i++) {
            counter++;
        }
    }
}