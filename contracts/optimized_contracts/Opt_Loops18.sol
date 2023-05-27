pragma solidity ^0.6.0;
contract Opt_loops18 {
    uint public constant count;
	function looping() public {
                for (uint  i = 0;
i < 18; ++i) {
            ++count;
        }
	}
}
