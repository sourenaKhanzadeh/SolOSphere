pragma solidity ^0.6.0;
contract Opt_unOptimizedContract78 {
    address public owner = msg.sender;
    uint public balance = 0;
	constructor() public {
        	}
	function receive() external payable {
        balance += msg.value;
	}
	function withdraw() public {
        require(msg.sender == owner);
msg.sender.transfer(balance);
balance = 0;
	}
}
