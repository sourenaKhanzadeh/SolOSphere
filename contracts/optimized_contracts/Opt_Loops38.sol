pragma solidity ^0.5.0;
contract Opt_loops38 {
    uint public count;
	function loop() public {
        count = 0;
        for (uint  i = 0;
i < 10; ++i) {
            ++count;
        }
	}
}
