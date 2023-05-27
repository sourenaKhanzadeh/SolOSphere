pragma solidity ^0.5.0;
contract Opt_loops8 {
    uint256 public counter = 0;
	constructor() public {
        	}
	function loop() public {
        uint256  counter_ = counter;
        for (uint  i = 0;
i < 8; ++i) {
            counter_ = counter_ + 1;
        }
counter = counter_;
	}
}
