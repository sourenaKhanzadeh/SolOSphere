pragma solidity ^0.6.3;
contract Opt_loops63 {
    uint256 public count = 0;
	constructor() public {
        	}
	function incrementCounter() public {
        ++count;
	}
	function loopCounter() public {
                for (uint256  i = 0;
i < count; ++i) {
            incrementCounter();
        }
	}
}
