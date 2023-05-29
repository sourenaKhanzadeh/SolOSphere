pragma solidity ^0.5.0;

contract loops14 {
    
    // Declare variables
    uint256 counter;
    uint256 limit;
    
    // Constructor
    constructor() public {
        counter = 0;
        limit = 10;
    }
    
    // Loop function
    function loop() public {
        while (counter < limit) {
            counter++;
        }
    }
}