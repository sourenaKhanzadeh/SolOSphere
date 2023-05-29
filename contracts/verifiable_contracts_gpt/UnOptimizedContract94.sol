pragma solidity ^0.5.0;

contract unOptimizedContract94 {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    // Function to return the owner address
    function getOwner() external view returns (address) {
        return owner;
    }

    // Function to set the owner address
    function setOwner(address newOwner) external {
        if (msg.sender == owner) {
            owner = newOwner;
        }
    }
}