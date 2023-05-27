pragma solidity ^0.6.0;
contract Opt_unOptimizedContract76 {
    uint public counter = 0;
	constructor() public {
        	}
	function incrementCounter() public {
        counter += 1;
	}
	function decrementCounter() public {
        counter -= 1;
	}
	function getCounter() public view returns (uint) {
        return counter;
	}
}
