pragma solidity ^0.6.6;
contract Opt_unOptimizedContract86 {
    address default owner = msg.sender;
	constructor() public {
        	}
	function transfer(address _to, uint256 _value) public {
        require(msg.sender == owner);
_to.transfer(_value);
	}
	function getBalance() public view returns (uint256) {
        return address(this).balance;
	}
	function withdraw() public {
        require(msg.sender == owner);
owner.transfer(address(this).balance);
	}
}
