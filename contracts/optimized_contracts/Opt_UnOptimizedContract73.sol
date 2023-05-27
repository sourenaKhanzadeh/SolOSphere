pragma solidity ^0.6.0;
contract Opt_unOptimizedContract73 {
    address public owner = msg.sender;
    uint public balance = 0;
	constructor() public {
        	}
	function receive() external payable {
        balance += msg.value;
	}
	function transfer(address to, uint amount) public {
        require(amount > 0);
require(balance >= amount);
balance -= amount;
to.transfer(amount);
	}
}
