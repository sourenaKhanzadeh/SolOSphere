pragma solidity ^0.5.0;
contract Opt_loops40 {
    uint public count;
	function loop() public {
        count = 0;
        for (uint  i = 0;
i < 40; ++i) {
            ++count;
        }
	}
}
