pragma solidity ^0.5.0;
contract Opt_loops64 {
    uint256 public counter = 0;
	constructor() public {
        	}
	function incrementCounter() public {
        ++counter;
	}
	function runLoop() public {
                for (uint256  i = 0;
i < 64; ++i) {
            incrementCounter();
        }
	}
}
