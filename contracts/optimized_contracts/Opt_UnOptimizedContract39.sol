pragma solidity ^0.5.0;
contract Opt_unOptimizedContract39 {
    uint public constant counter;
	function incrementCounter() public {
        ++counter;
	}
	function getCounter() public view returns (uint) {
        return counter;
	}
}
