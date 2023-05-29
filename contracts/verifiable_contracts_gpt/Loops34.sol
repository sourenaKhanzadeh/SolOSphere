pragma solidity ^0.4.24;

contract loops34 {
    uint public counter;
    
    function loops34() public {
        counter = 0;
    }
    
    function loop() public {
        for (uint i = 0; i < 10; i++) {
            counter++;
        }
    }
}