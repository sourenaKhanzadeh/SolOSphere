pragma solidity ^0.5.0;

contract unOptimizedContract98 {
    address payable public owner;
    constructor() public {
        owner = msg.sender;
    }

    function getOwner() public view returns (address payable) {
        return owner;
    }

    function setOwner(address payable _owner) public onlyOwner {
        owner = _owner;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}