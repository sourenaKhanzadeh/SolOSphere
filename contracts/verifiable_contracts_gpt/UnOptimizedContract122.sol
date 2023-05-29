pragma solidity ^0.5.1;

contract unOptimizedContract122 {
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }
    
    function getOwner() public view returns (address) {
        return owner;
    }
}