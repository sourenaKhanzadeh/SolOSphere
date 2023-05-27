pragma solidity ^0.6.0;
contract Opt_unOptimizedContract48 {
    address public owner = msg.sender;
	constructor() public {
        	}
	function transfer(address _to, uint256 _value) public {
        require(msg.sender == owner, 'Only owner can transfer');
_to.transfer(_value);
	}
}
