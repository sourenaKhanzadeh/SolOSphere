pragma solidity ^0.4.25;
contract Opt_unOptimizedContract80 {
    address public owner = msg.sender;
    uint public balance = 0;
	constructor() public {
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
