pragma solidity ^0.5.0;

contract loops11 {
    uint public counter;

    function runLoop() public {
        for (uint i = 0; i < 10; i++) {
            counter++;
        }
    }
}