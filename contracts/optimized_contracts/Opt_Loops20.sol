pragma solidity ^0.5.0;
contract Opt_loops20 {
    uint256 public count = 0;
	constructor() public {
        	}
	function loop() public {
                for (uint256  i = 0;
i < 20; ++i) {
            ++count;
        }
	}
}
