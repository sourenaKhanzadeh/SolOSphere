pragma solidity ^0.5.0;

contract loops24 {
    uint256 public counter;
    
    constructor() public {
        counter = 0;
    }
    
    function loop24() public {
        for (uint256 i = 0; i < 24; i++) {
            counter++;
        }
    }
}