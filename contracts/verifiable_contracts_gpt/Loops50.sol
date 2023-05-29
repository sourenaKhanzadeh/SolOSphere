pragma solidity ^0.6.6;

contract loops50 {
    
    // Initialize a counter to 0
    uint256 counter = 0;
    
    // Set the maximum counter value
    uint256 maxCounter = 50;
    
    // Function to increment the counter
    function incrementCounter() public {
        // Check if counter is less than the maximum
        require(counter < maxCounter);
        // Increment the counter
        counter++;
    }
    
    // Function to reset the counter
    function resetCounter() public {
        // Set the counter to 0
        counter = 0;
    }
    
    // Function to check if the loop is complete
    function isComplete() public view returns (bool) {
        // Check if counter is equal to the maximum
        return (counter == maxCounter);
    }
}