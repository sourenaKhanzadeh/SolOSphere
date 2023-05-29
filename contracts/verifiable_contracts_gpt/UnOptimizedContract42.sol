pragma solidity ^0.4.22;

contract unOptimizedContract42 {

    // declare a uint variable to track the number of times the function has been called
    uint public count;

    // define a function to increment the count variable
    function incrementCount() public {
        count += 1;
    }
}