pragma solidity ^0.5.0;
contract Opt_loops22 {
    uint256 public count;
	function increment() public {
        count += 1;
	}
	function loopPattern() public {
                for (uint256  i = 0;
i < 10; ++i) {
            increment();
        }
	}
}
