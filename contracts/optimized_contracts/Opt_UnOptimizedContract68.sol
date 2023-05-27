pragma solidity ^0.5.0;
contract Opt_unOptimizedContract68 {
    address public owner = msg.sender;
    uint public value;
	constructor() public {
        	}
	function setValue(uint _value) public {
        require(msg.sender == owner);
value = _value;
	}
	function getValue() public view returns (uint) {
        return value;
	}
	function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
owner = newOwner;
	}
}
