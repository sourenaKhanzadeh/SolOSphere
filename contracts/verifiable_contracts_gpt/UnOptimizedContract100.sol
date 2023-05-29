pragma solidity ^0.5.0;

contract unOptimizedContract100 {
    
    address payable owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
        owner = address(uint160(newOwner));
    }
    
    function getOwner() public view returns (address) {
        return owner;
    }
    
    function destroy() public {
        require(msg.sender == owner);
        selfdestruct(owner);
    }
    
}