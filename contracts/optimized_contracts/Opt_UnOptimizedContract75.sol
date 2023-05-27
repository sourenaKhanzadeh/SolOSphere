pragma solidity ^0.6.0;
contract Opt_unOptimizedContract75 {
    uint public constant counter;
	function increment() public {
        ++counter;
	}
	function getCounter() public view returns (uint) {
        return counter;
	}
}
