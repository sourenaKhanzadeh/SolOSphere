pragma solidity ^0.5.1;
contract Opt_unOptimizedContract122 {
    address public owner = msg.sender;
	constructor() public {
        	}
	function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
owner = newOwner;
	}
	function getOwner() public view returns (address) {
        return owner;
	}
}
