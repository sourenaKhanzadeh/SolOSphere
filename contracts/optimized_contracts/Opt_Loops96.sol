pragma solidity ^0.6.0;
contract Opt_loops96 {
    uint public counter = 0;
	constructor() public {
        	}
	function loop() public {
                for (uint  i = 0;
i < 96; ++i) {
            ++counter;
        }
	}
}
