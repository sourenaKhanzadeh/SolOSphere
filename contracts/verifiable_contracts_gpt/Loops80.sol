pragma solidity ^0.5.11;

contract loops80 {
    
    uint public counter;
    
    constructor() public {
        counter = 0;
    }
    
    function loopCounter() public returns (uint) {
        for (uint i = 0; i < 80; i++) {
            counter++;
        }
        return counter;
    }
}