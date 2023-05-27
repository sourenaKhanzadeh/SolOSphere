pragma solidity ^0.5.0;

contract loops42 {
    uint public counter;

    constructor() public {
        counter = 0;
    }

    function loopIt() public {
        for (uint i = 0; i < 42; i++) {
            counter++;
        }
    }
}