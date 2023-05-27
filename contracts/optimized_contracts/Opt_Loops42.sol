pragma solidity ^0.5.0;
contract Opt_loops42 {
    uint public counter = 0;
	constructor() public {
        	}
	function loopIt() public {
                for (uint  i = 0;
i < 42; ++i) {
            ++counter;
        }
	}
}
