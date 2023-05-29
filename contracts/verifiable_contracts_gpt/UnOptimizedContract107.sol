pragma solidity ^0.5.7;

contract unOptimizedContract107 {
    uint256 public balance;
    
    constructor() public {
        balance = 0;
    }

    function deposit() public payable {
        balance += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(amount <= balance);
        balance -= amount;
        msg.sender.transfer(amount);
    }
}