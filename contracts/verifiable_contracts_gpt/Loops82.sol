pragma solidity ^0.5.0;

contract loops82 {
    uint public total;

    function loop() public {
        total = 0;
        for(uint i = 0; i < 10; i++) {
            total += i;
        }
    }
}