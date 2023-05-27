pragma solidity ^0.5.0;
contract Opt_unOptimizedContract61 {
    uint public totalSupply = 0;
    address => uint public constant balances;
    address => address => uint public constant allowed;
event Transfer(type, parameters)	constructor() public {
        	}
	function transfer(address _to, uint256 _value) public {
        require(balances[msg.sender] >= _value);
balances[msg.sender] -= _value;
balances[_to] += _value;
	}
}
