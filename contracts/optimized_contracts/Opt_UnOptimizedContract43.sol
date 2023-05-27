pragma solidity ^0.5.0;
contract Opt_unOptimizedContract43 {
    uint public balance = 0;
	constructor() public {
        	}
	function addBalance(uint _amount) public {
        balance += _amount;
	}
	function getBalance() public view returns (uint) {
        return balance;
	}
}
