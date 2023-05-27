pragma solidity ^0.7.0;
contract Opt_unOptimizedContract70 {
    address public owner = msg.sender;
	constructor() public {
        	}
	function setOwner(address newOwner) public {
        require(msg.sender == owner);
owner = newOwner;
	}
	function getOwner() public view returns (address) {
        return owner;
	}
}
