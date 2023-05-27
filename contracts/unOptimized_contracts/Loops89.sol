pragma solidity ^0.5.0;

contract loops89 {
    // define a variable to store the loop count
    uint loopCount;

    // define a function to set the loop count
    function setLoopCount(uint count) public {
        loopCount = count;
    }

    // define a function to execute the loop
    function executeLoop() public {
        for (uint i = 0; i < loopCount; i++) {
            // do some work
        }
    }
}