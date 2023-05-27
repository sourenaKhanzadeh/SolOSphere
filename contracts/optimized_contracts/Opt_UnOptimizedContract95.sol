pragma solidity ^0.5.0;
contract Opt_unOptimizedContract95 {
    address default owner = msg.sender;
    uint public balance = 0;
	constructor() public {
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
