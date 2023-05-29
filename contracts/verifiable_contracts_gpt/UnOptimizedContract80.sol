pragma solidity ^0.4.25;

contract unOptimizedContract80 {

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
        require(balance >= amount);
        balance -= amount;
        msg.sender.transfer(amount);
    }

    function getBalance() public view returns (uint) {
        return balance;
    }

}