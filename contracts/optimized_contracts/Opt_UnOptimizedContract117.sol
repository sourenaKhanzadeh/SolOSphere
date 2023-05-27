pragma solidity ^0.5.0;
contract Opt_unOptimizedContract117 {
    address public owner = msg.sender;
    uint public counter = 0;
	constructor() public {
        	}
	function incrementCounter() public {
        ++counter;
	}
	function getCounter() public view returns (uint) {
        return counter;
	}
	function getOwner() public view returns (address) {
        return owner;
	}
}
