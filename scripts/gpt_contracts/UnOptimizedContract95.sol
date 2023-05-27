pragma solidity ^0.5.0;

contract unOptimizedContract95 {
    address owner;
    uint public balance;

    constructor() public {
        owner = msg.sender;
        balance = 0;
    }

    function deposit() public payable {
        require(msg.value > 0);
        balance += msg.value;
    }

    function withdraw(uint amount) public {
        require(amount <= balance);
        require(msg.sender == owner);
        balance -= amount;
        msg.sender.transfer(amount);
    }
}