pragma solidity ^0.5.11;
contract Opt_loops81 {
    uint256 public count;
	function loop() public {
        count = 0;
        for (uint256  i = 0;
i < 81; ++i) {
            ++count;
        }
	}
}
