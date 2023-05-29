pragma solidity ^0.5.0;

contract loops75 {
    uint256 public total;

    function loop75() public {
        total = 0;
        for (uint256 i = 0; i < 75; i++) {
            total += i;
        }
    }
}