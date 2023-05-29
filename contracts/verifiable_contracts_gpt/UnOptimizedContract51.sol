pragma solidity 0.5.16;

contract unOptimizedContract51 {
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function getOwner() public view returns (address) {
        return owner;
    }
    
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }
}