pragma solidity ^0.6.0;
contract Opt_unOptimizedContract44 {
    address public owner = msg.sender;
	constructor() public {
        	}
	function transferFunds(address recipient, uint256 amount) public {
        require(msg.sender == owner, 'Only owner can transfer funds.');
recipient.transfer(amount);
	}
}
