pragma solidity ^0.5.0;
contract Opt_unOptimizedContract82 {
    uint256 public balance = 0;
	constructor() public {
        	}
	function deposit(uint256 _amount) public {
        balance += _amount;
	}
	function withdraw(uint256 _amount) public {
        require(balance >= _amount, 'Insufficient balance');
balance -= _amount;
	}
	function getBalance() public view returns (uint256) {
        return balance;
	}
}
