pragma solidity ^0.5.0;
contract Opt_unOptimizedContract124 {
    address public owner = msg.sender;
    uint public counter = 0;
	constructor() public {
        	}
	function incrementCounter() public {
        ++counter;
	}
	function decrementCounter() public {
        --counter;
	}
	function getCounter() public view returns (uint) {
        return counter;
	}
	function getOwner() public view returns (address) {
        return owner;
	}
	function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
owner = newOwner;
	}
}
