pragma solidity ^0.5.1;

contract loops77 {
    
    uint256 public count;
    
    constructor() public {
        count = 0;
    }
    
    function loopCount() public {
        uint256 i;
        for(i=0; i<77; i++) {
            count++;
        }
    }
}