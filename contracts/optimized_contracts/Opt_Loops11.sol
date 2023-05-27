pragma solidity ^0.5.0;
contract Opt_loops11 {
    uint public constant counter;
	function runLoop() public {
                for (uint  i = 0;
i < 10; ++i) {
            ++counter;
        }
	}
}
