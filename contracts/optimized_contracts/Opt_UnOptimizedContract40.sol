pragma solidity ^0.5.0;
contract Opt_unOptimizedContract40 {
    uint public x = 0;
	constructor() public {
        	}
	function increment() public {
        ++x;
	}
	function decrement() public {
        --x;
	}
	function getX() public view returns (uint) {
        return x;
	}
}
