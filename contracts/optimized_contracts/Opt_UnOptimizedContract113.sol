pragma solidity ^0.6.0;
contract Opt_unOptimizedContract113 {
    address default owner = msg.sender;
	constructor() public {
        	}
	function getOwner() public view returns (address) {
        return owner;
	}
	function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
owner = newOwner;
	}
}
