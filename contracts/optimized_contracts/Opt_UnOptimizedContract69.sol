pragma solidity ^0.6.0;
contract Opt_unOptimizedContract69 {
    string public name = 'John Doe';
    uint public age = 18;
    uint public balance = 0;
	constructor() public {
        	}
	function setName(string calldata _name) public {
        name = _name;
	}
	function setAge(uint _age) public {
        age = _age;
	}
	function setBalance(uint _balance) public {
        balance = _balance;
	}
	function getName() public view returns (string) {
        return name;
	}
	function getAge() public view returns (uint) {
        return age;
	}
}
