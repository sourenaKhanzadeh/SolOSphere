pragma solidity ^0.5.0;

contract loops90 {
    uint public counter;

    constructor() public {
        counter = 0;
    }

    function loop90() public {
        for (uint i = 0; i < 90; i++) {
            counter++;
        }
    }
}