pragma solidity ^0.5.7;
contract Opt_unOptimizedContract107 {
    uint256 public balance = 0;
	constructor() public {
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
