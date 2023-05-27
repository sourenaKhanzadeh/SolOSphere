pragma solidity ^0.5.0;
contract Opt_unOptimizedContract71 {
    string public message = 'Hello World!';
	constructor() public {
        	}
	function updateMessage(string calldata _message) public {
        message = _message;
	}
	function getMessage() public view returns (string) {
        return message;
	}
}
