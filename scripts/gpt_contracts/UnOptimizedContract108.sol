pragma solidity ^0.6.0;

contract unOptimizedContract108 {
    
    //State variables
    uint256 public count = 0;
    
    //Events
    event Incremented(uint256 newCount);
    
    //Functions
    function increment() public {
        count++;
        emit Incremented(count);
    }
    
    function getCount() public view returns (uint256) {
        return count;
    }
}