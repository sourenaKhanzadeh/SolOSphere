pragma solidity ^0.5.7;

contract loops84 {
    // An array to store values 
    uint[] public values;

    // Function to add values to the array
    function addValue(uint value) public {
        values.push(value);
    }

    // Function to loop through the array
    function loopThroughValues() public {
        for (uint i = 0; i < values.length; i++) {
            // Do something with each value
            // ...
        }
    }
}