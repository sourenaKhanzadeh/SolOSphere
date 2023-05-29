pragma solidity ^0.6.0;

contract loops7 {
    uint public counter;
    
    constructor() public {
        counter = 0;
    }
    
    function loop() public {
        for (uint i = 0; i < 10; i++) {
            counter++;
        }
    }
}