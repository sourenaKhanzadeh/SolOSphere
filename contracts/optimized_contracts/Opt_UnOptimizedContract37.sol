pragma solidity ^0.5.0;
contract Opt_unOptimizedContract37 {
    uint public balance = 0;
	constructor() public {
        	}
	function deposit(uint amount) public {
        balance += amount;
	}
	function withdraw(uint amount) public {
        require(balance >= amount);
balance -= amount;
	}
}
