pragma solidity ^0.4.22;
contract Opt_unOptimizedContract116 {
    address => uint public constant balances;
	constructor() public {
        	}
	function add(uint _amount) public {
        balances[msg.sender] += _amount;
	}
	function subtract(uint _amount) public {
        balances[msg.sender] -= _amount;
	}
}
