// Solidity Contract for Loops44
pragma solidity ^0.5.0;

contract Loops44 {
    // State Variables
    uint public count;
    uint public maxCount;

    // Constructor
    constructor() public {
        count = 0;
        maxCount = 44;
    }

    // Function to loop 44 times
    function loop44() public {
        while(count < maxCount) {
            count++;
        }
    }
}