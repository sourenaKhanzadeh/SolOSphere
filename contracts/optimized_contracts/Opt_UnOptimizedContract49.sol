pragma solidity ^0.7.0;
contract Opt_unOptimizedContract49 {
    uint public value = 0;
	constructor() public {
        	}
	function setValue(uint _value) public {
        value = _value;
	}
	function getValue() public view returns (uint) {
        return value;
	}
}
