pragma solidity ^0.6.0;

contract loops60 {

    // declare a counter
    uint counter;

    // constructor
    constructor() public {
        counter = 0;
    }

    // function to increment counter
    function incrementCounter() public {
        counter++;
    }

    // loop function
    function loop() public {
        for (uint i = 0; i < 60; i++) {
            incrementCounter();
        }
    }

}