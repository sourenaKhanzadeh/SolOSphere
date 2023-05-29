pragma solidity ^0.7.0;

contract unOptimizedContract70 {

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