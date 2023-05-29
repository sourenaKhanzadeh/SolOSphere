pragma solidity ^0.6.0;

contract loops18 {
    uint public count;

    function looping() public {
        for (uint i = 0; i < 18; i++) {
            count++;
        }
    }
}