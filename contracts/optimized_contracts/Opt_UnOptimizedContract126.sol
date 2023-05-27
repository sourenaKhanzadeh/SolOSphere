pragma solidity ^0.5.0;
contract Opt_unOptimizedContract126 {
    uint public counter = 0;
	constructor() public {
        	}
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
