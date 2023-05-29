pragma solidity ^0.5.0;

contract loops76 {
    uint public counter;
    
    constructor() public {
        counter = 0;
    }
    
    function incrementCounter() public {
        for (uint i = 0; i < 10; i++) {
            counter++;
        }
    }
}