pragma solidity ^0.6.6;
contract Opt_unOptimizedContract127 {
    address public owner = msg.sender;
	constructor() public {
        	}
	function transferFunds(address _recipient, uint _amount) public payable {
        require(msg.sender == owner);
_recipient.transfer(_amount);
	}
}
