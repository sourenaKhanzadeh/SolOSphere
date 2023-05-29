pragma solidity >=0.5.0 <0.7.0;

contract unOptimizedContract91 {
    uint public balance;
    
    constructor() public {
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