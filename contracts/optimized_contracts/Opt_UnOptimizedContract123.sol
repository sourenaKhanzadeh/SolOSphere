pragma solidity ^0.5.0;
contract Opt_unOptimizedContract123 {
    uint public totalSupply = 0;
	constructor() public {
        	}
	function incrementTotalSupply() public {
        ++totalSupply;
	}
	function getTotalSupply() public view returns (uint) {
        return totalSupply;
	}
}
