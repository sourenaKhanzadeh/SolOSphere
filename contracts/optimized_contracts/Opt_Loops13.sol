pragma solidity ^0.5.0;
contract Opt_loops13 {
    uint256 public count;
	function loopCounter() public {
        count = 0;
        for (uint256  i = 0;
i < 10; ++i) {
            ++count;
        }
	}
}
