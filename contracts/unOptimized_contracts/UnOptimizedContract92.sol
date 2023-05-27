pragma solidity ^0.5.0;

contract unOptimizedContract92 {
    // Contract Variables
    uint public contractNumber;
    address public owner;
    string public name;
    uint public balance;

    // Constructor
    constructor() public {
        owner = msg.sender;
        contractNumber = 92;
        name = "unOptimizedContract92";
        balance = 0;
    }

    // Functions
    function deposit() public payable {
        require(msg.value > 0);
        balance += msg.value;
    }

    function withdraw(uint amount) public {
        require(amount > 0);
        require(amount <= balance);
        balance -= amount;
        msg.sender.transfer(amount);
    }

    function getBalance() public view returns (uint) {
        return balance;