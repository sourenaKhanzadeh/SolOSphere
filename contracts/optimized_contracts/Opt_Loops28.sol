pragma solidity ^0.6.0;
contract Opt_loops28 {
    uint256 default count;
	function loop() public {
        count = 0;
        for (uint256  i = 0;
i < 28; ++i) {
            ++count;
        }
	}
}
