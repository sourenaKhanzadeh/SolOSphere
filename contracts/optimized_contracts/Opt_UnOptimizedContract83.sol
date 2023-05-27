pragma solidity ^0.5.0;
contract Opt_unOptimizedContract83 {
    address public owner = msg.sender;
    uint public balance = 0;
	constructor() public {
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
