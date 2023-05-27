pragma solidity ^0.6.0;
contract Opt_unOptimizedContract62 {
    address public owner = msg.sender;
	constructor() public {
        	}
	function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
owner = newOwner;
	}
}
