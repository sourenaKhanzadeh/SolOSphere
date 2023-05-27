pragma solidity 0.5.16;
contract Opt_unOptimizedContract51 {
    address public owner = msg.sender;
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
