pragma solidity ^0.5.0;

contract loops97 {
    uint public counter;

    constructor() public {
        counter = 0;
    }

    function loop() public {
        for(uint i = 0; i < 97; i++) {
            counter++;
        }
    }
}