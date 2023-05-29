pragma solidity ^0.5.0;

contract loops1 {
    
    uint256 public counter;
    
    constructor() public {
        counter = 0;
    }
    
    function loop1() public {
        for (uint256 i = 0; i < 10; i++) {
            counter++;
        }
    }
    
    function loop2() public {
        uint256 j = 0;
        while (j < 10) {
            counter++;
            j++;
        }
    }
}