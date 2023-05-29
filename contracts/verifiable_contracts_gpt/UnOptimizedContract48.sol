pragma solidity ^0.6.0;

contract unOptimizedContract48 {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function transfer(address payable _to, uint256 _value) public {
        require(msg.sender == owner, "Only owner can transfer");
        _to.transfer(_value);
    }

}