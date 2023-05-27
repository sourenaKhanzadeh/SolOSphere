pragma solidity ^0.5.0;
contract Opt_loops15 {
    uint public constant count = 0;
	function loopCount() public returns (uint) {
                for (uint  i = 0;
i < 15; ++i) {
            ++count;
        }
return count;
	}
}
