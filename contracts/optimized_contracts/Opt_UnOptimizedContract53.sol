pragma solidity ^0.4.25;
contract Opt_unOptimizedContract53 {
    uint256 public constant counter;
	function incrementCounter() public {
        ++counter;
	}
	function decrementCounter() public {
        --counter;
	}
	function getCounter() public view returns (uint256) {
        return counter;
	}
}
