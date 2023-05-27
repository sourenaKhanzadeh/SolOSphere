pragma solidity ^0.5.0;
contract Opt_loops78 {
    uint public constant counter;
	function increaseCounter() public {
        ++counter;
	}
	function loopCounter() external {
                for (uint  i = 0;
i < 78; ++i) {
            increaseCounter();
        }
	}
}
