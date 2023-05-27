pragma solidity ^0.6.2;
contract Opt_unOptimizedContract88 {
    address default owner = msg.sender;
	constructor() public {
        	}
	function sendFunds(address recipient, uint amount) public {
        require(msg.sender == owner, 'Only owner can send funds');
recipient.transfer(amount);
	}
}
