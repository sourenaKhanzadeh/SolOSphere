pragma solidity ^0.6.0;
contract Opt_unOptimizedContract115 {
    address default owner = msg.sender;
	constructor() public {
        	}
	function transfer(address _to, uint256 _value) public {
        require(msg.sender == owner);
_to.transfer(_value);
	}
}
