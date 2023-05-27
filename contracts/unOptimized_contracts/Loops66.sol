pragma solidity ^0.5.0;

contract loops66 {

    uint256 public counter;

    function looping() public {
        for (uint256 i = 0; i < 10; i++) {
            counter++;
        }
    }

}