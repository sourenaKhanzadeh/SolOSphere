pragma solidity ^0.6.0;

contract loops6 {
    // State variable to track the number of iterations
    uint256 public count;
    
    // Constructor
    constructor() public {
        count = 0;
    }
    
    // Function to increment the count
    function increment() public {
        count += 1;
    }
    
    // Function to loop through a range of numbers
    function loop() public {
        for (uint256 i = 0; i < 10; i++) {
            increment();
        }
    }
}