pragma solidity ^0.6.0;
contract Opt_loops6 {
    uint256 public count = 0;
	constructor() public {
        	}
	function increment() public {
        count += 1;
	}
	function loop() public {
                for (uint256  i = 0;
i < 10; ++i) {
            increment();
        }
	}
}
