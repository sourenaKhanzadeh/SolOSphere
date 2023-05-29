pragma solidity ^0.5.10;

contract loops93 {
    uint public counter;

    constructor() public {
        counter = 0;
    }

    function loop() public {
        for(uint i = 0; i < 10; i++) {
            counter++;
        }
    }
}