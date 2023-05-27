pragma solidity ^0.5.0;
contract Opt_unOptimizedContract129 {
    address default owner = msg.sender;
	constructor() public {
        	}
	function transfer(address recipient, uint256 amount) public {
        require(amount > 0);
require(msg.sender == owner);
recipient.transfer(amount);
	}
}
