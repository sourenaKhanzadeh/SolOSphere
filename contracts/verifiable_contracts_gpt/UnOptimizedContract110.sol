pragma solidity ^0.5.0;

contract unOptimizedContract110 {
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function transferOwnership(address _newOwner) public {
        require(msg.sender == owner);
        owner = _newOwner;
    }
    
    function getOwner() public view returns (address) {
        return owner;
    }
}