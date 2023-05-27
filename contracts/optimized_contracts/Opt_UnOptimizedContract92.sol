pragma solidity ^0.5.0;
contract Opt_unOptimizedContract92 {
    address public owner = msg.sender;
    uint public contractNumber = 92;
    string public name = 'unOptimizedContract92';
    uint public balance = 0;
	constructor() public {
        	}
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
	}
}
