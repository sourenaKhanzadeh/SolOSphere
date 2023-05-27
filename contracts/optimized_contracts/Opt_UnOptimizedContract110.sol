pragma solidity ^0.5.0;
contract Opt_unOptimizedContract110 {
    address public owner = msg.sender;
	constructor() public {
        	}
	function transferOwnership(address _newOwner) public {
        require(msg.sender == owner);
owner = _newOwner;
	}
	function getOwner() public view returns (address) {
        return owner;
	}
}
