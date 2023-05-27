pragma solidity ^0.5.0;

contract loops79 {
    uint public counter = 0;

    function incrementCounter() public {
        counter += 1;
    }

    function loop() public {
        for (uint i = 0; i < 79; i++) {
            incrementCounter();
        }
    }
}