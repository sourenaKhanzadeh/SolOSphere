pragma solidity ^0.5.0;
contract Opt_unOptimizedContract111 {
    uint public count;
	function increment() public {
        ++count;
	}
	function decrement() public {
        --count;
	}
	function setCount(uint _count) public {
        count = _count;
	}
	function getCount() public view returns (uint) {
        return count;
	}
}
