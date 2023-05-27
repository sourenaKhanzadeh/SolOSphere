pragma solidity ^0.5.0;
contract Opt_loops94 {
    uint256 public count = 0;
	constructor() public {
        	}
	function loop() public {
        uint256  count_ = count;
        for (uint256  i = 0;
i < 10; ++i) {
            count_ += i;
        }
count = count_;
	}
}
