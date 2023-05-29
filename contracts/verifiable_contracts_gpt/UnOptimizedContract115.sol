pragma solidity ^0.6.0;

contract unOptimizedContract115 {
    address payable owner;

    constructor() public {
        owner = msg.sender;
    }

    function transfer(address payable _to, uint256 _value) public {
        require(msg.sender == owner);
        _to.transfer(_value);
    }
}