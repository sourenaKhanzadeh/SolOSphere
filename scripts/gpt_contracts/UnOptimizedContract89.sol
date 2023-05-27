pragma solidity ^0.5.0;

contract unOptimizedContract89 {

    // Declare and initialize a variable to store the contract owner
    address public owner;
    constructor() public {
        owner = msg.sender;
    }

    // Declare a function to transfer ownership of this contract
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }

    // Declare a function to return the contract owner
    function getOwner() public view returns (address) {
        return owner;
    }

}