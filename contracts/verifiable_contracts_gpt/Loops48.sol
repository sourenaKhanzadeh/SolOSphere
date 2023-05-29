pragma solidity ^0.5.0;

contract loops48 {
    uint public counter;

    constructor() public {
        counter = 0;
    }

    function loop() public {
        for (uint i = 0; i < 48; i++) {
            counter++;
        }
    }
}