pragma solidity ^0.5.0;
contract Opt_unOptimizedContract87 {
    uint public constant counter;
	function incrementCounter() public {
        ++counter;
	}
	function decrementCounter() public {
        --counter;
	}
	function getCounter() public view returns (uint) {
        return counter;
	}
}
