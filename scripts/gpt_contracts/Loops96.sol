pragma solidity ^0.6.0;

contract loops96 {
    uint public counter;

    function loops96() public {
        counter = 0;
    }

    function loop() public {
        for (uint i = 0; i < 96; i++) {
            counter++;
        }
    }
}