pragma solidity ^0.6.0;
contract Opt_unOptimizedContract101 {
    address public owner = msg.sender;
    address => uint256 public constant balances;
	constructor() public {
        	}
	function deposit() public payable {
        require(msg.value > 0);
balances[msg.sender] += msg.value;
	}
	function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount);
require(amount > 0);
balances[msg.sender] -= amount;
msg.sender.transfer(amount);
	}
	function getBalance() public view returns (uint256) {
        return balances[msg.sender];
	}
}
