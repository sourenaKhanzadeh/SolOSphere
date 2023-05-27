pragma solidity ^0.5.0;
contract Opt_unOptimizedContract85 {
    uint public balance = 0;
    address => uint public constant balances;
	constructor() public {
        	}
	function deposit() public payable {
        balance += msg.value;
balances[msg.sender] += msg.value;
	}
	function withdraw(uint amount) public {
        require(amount <= balances[msg.sender], 'Insufficient funds');
balances[msg.sender] -= amount;
balance -= amount;
msg.sender.transfer(amount);
	}
}
