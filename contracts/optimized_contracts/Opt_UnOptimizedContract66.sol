pragma solidity ^0.5.0;
contract Opt_unOptimizedContract66 {
    address default owner = msg.sender;
	constructor() public {
        	}
	function transfer(address recipient, uint256 amount) public {
        require(msg.sender == owner, 'Only the owner can transfer funds');
require(amount > 0, 'Amount must be greater than zero');
recipient.transfer(amount);
	}
}
