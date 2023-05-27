pragma solidity ^0.6.0;
contract Opt_unOptimizedContract64 {
    address => uint public constant balances;
	constructor(uint initialSupply) public {
        	}
	function transfer(address _to, uint _value) public {
        require(balances[msg.sender] >= _value);
balances[msg.sender] -= _value;
balances[_to] += _value;
	}
	function balanceOf(address _owner) public view returns (uint) {
        return balances[_owner];
	}
}
