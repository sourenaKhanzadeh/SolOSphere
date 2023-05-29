pragma solidity ^0.5.0;

contract loops91 {
    // define the loop size
    uint256 loopSize = 10;

    // define the loop start
    uint256 loopStart = 1;

    // define the loop end
    uint256 loopEnd = loopStart + loopSize;

    // define the loop counter
    uint256 loopCounter = loopStart;

    // define the loop result
    uint256 loopResult = 0;

    // function to start the loop
    function startLoop() public {
        // loop from the start to the end
        while (loopCounter < loopEnd) {
            // add the loop counter to the loop result
            loopResult += loopCounter;

            // increment the loop counter
            loopCounter++;
        }
    }

    // function to get the loop result
    function getLoopResult() public view returns (uint256) {
        // return the loop result
        return loopResult;
    }
}