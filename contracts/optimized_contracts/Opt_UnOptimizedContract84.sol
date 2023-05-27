pragma solidity 0.6.6;
contract Opt_unOptimizedContract84 {
    uint public constant counter;
	function increment() public {
        ++counter;
	}
	function decrement() public {
        --counter;
	}
	function getCounter() public view returns (uint) {
        return counter;
	}
}
