pragma solidity ^0.5.0;
contract Opt_unOptimizedContract112 {
    uint public counter = 0;
	constructor() public {
        	}
	function incrementCounter() public {
        ++counter;
	}
	function getCounter() public view returns (uint) {
        return counter;
	}
}
