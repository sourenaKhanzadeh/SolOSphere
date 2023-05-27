pragma solidity ^0.5.0;

contract unOptimizedContract99 {
    uint public balance;

    function deposit() public payable {
        balance += msg.value;
    }

    function withdraw(uint amount) public {
        require(amount <= balance);
        balance -= amount;
        msg.sender.transfer(amount);
    }
}