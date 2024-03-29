pragma solidity ^0.5.0;

contract unOptimizedContract85 {
    uint public balance;
    mapping(address => uint) public balances;

    constructor() public {
        balance = 0;
    }

    function deposit() public payable {
        balance += msg.value;
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        require(amount <= balances[msg.sender], "Insufficient funds");
        balances[msg.sender] -= amount;
        balance -= amount;
        msg.sender.transfer(amount);
    }

}