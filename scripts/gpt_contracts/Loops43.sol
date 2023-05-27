pragma solidity ^0.6.0;

contract Loops43 {
    
    uint public count;

    constructor() public {
        count = 0;
    }

    function loop() public {
        for (uint i = 0; i < 43; i++) {
            count++;
        }
    }

}