pragma solidity ^0.5.0;
contract Opt_unOptimizedContract79 {
    uint public totalSupply = 0;
    address => uint public constant balances;
	constructor() public {
        	}
	function deposit() public {
        ++totalSupply;
++balances[msg.sender];
	}
	function withdraw() public {
        require(balances[msg.sender] > 0, 'Insufficient balance');
--totalSupply;
--balances[msg.sender];
	}
}
