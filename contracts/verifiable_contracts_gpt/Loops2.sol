pragma solidity ^0.5.0;

contract loops2 {
    int public count = 0;

    function loop() public {
        for (uint i=0; i<10; i++) {
            count++;
        }
    }
}