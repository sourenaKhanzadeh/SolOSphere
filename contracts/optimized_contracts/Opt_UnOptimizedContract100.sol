pragma solidity ^0.5.0;
contract Opt_unOptimizedContract100 {
    address default owner = msg.sender;
	constructor() public {
        	}
	function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
owner = address(uint160(newOwner));
	}
	function getOwner() public view returns (address) {
        return owner;
	}
	function destroy() public {
        require(msg.sender == owner);
selfdestruct(owner);
	}
}
