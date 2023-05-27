pragma solidity ^0.5.0;
contract Opt_loops12 {
    uint256 public counter = 0;
	constructor() public {
        	}
	function increaseCounter() public {
                for (uint256  i = 0;
i < 12; ++i) {
            ++counter;
        }
	}
}
