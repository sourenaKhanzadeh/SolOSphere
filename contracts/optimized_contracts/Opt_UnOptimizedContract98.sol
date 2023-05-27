pragma solidity ^0.5.0;
contract Opt_unOptimizedContract98 {
    address public owner = msg.sender;
	constructor() public {
        	}
	function getOwner() public view returns (address payable) {
        return owner;
	}
	function setOwner(address _owner) public {
        owner = _owner;
	}
modifier onlyOwner()     require(msg.sender == owner);
_;
}
