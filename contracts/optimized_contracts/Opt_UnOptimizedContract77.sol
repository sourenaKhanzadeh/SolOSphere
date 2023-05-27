pragma solidity ^0.5.0;
contract Opt_unOptimizedContract77 {
    string public message = 'Hello, world!';
	constructor() public {
        	}
	function setMessage(string calldata newMessage) public {
        message = newMessage;
	}
	function getMessage() public view returns (string) {
        return message;
	}
}
