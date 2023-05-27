pragma solidity ^0.5.0;

contract unOptimizedContract118 {

    address public owner;
    uint256 public balance;

    constructor() public {
        owner = msg.sender;
        balance = 0;
    }

    function deposit() public payable {
        require(msg.value > 0);
        balance += msg.value;
    }

    function withdraw(uint256 _amount) public {
        require(balance >= _amount);
        balance -= _amount;
        msg.sender.transfer(_amount);
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }

}