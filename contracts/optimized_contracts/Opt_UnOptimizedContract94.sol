pragma solidity ^0.5.0;
contract Opt_unOptimizedContract94 {
    address default owner = msg.sender;
	constructor() public {
        	}
	function getOwner() external view returns (address) {
        return owner;
	}
	function setOwner(address newOwner) external {
                if (msg.sender == owner) {
            owner = newOwner;
        }
	}
}
