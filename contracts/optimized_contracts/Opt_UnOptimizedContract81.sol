pragma solidity ^0.6.0;
contract Opt_unOptimizedContract81 {
    address public owner = msg.sender;
    string public name = 'John Doe';
    uint public age = 25;
    uint public balance = 1000;
	constructor() public {
        	}
	function getName() public view returns (string) {
        return name;
	}
	function getAge() public view returns (uint) {
        return age;
	}
	function getBalance() public view returns (uint) {
        return balance;
	}
}
