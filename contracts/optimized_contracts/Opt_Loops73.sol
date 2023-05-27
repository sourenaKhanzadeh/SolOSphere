pragma solidity ^0.7.3;
contract Opt_loops73 {
    uint public count;
	function loop() public {
        count = 0;
        for (uint  i = 0;
i < 10; ++i) {
            ++count;
        }
	}
}
