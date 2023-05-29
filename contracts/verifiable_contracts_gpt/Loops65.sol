pragma solidity ^0.5.7;

contract loops65 {

    uint256 public count;

    function loopCount() public {
        for (uint256 i = 0; i < 65; i++) {
            count++;
        }
    }

}