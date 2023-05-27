pragma solidity ^0.5.0;
contract Opt_loops98 {
    uint256 public iterationCount = 0;
	constructor() public {
        	}
	function startLoop(uint256 _max) public {
        iterationCount = 0;
        while (iterationCount < _max) {
            ++iterationCount;
        }
	}
}
