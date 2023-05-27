pragma solidity ^0.5.0;

contract loops32 {
    uint public count = 0;

    constructor() public {
        // Initialize the count to 0
        count = 0;
    }

    function loop32() public {
        // Unoptimized loop based pattern
        for (uint i = 0; i < 32; i++) {
            count++;
        }
    }
}