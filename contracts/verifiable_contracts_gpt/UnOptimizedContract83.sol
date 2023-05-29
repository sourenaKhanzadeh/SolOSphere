pragma solidity ^0.5.0;

contract unOptimizedContract83 {
    address public owner;
    uint public balance;

    constructor() public {
        owner = msg.sender;
        balance = 0;
    }

    function deposit() public payable {
        balance += msg.value;
    }

    function withdraw(uint amount) public {
        require(amount <= balance);
        balance -= amount;
        msg.sender.transfer(amount);
    }
}