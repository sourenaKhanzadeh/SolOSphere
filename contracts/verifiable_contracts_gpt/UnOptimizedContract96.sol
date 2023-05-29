pragma solidity ^0.5.0;

contract unOptimizedContract96 {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function setOwner(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}