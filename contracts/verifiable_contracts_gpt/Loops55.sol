pragma solidity ^0.5.0;

contract loops55 {
    uint public count;

    constructor() public {
        count = 0;
    }

    function loop55() public {
        for (uint i = 0; i < 55; i++) {
            count++;
        }
    }
}