pragma solidity ^0.6.0;
contract Opt_loops60 {
    uint default counter = 0;
	constructor() public {
        	}
	function incrementCounter() public {
        ++counter;
	}
	function loop() public {
                for (uint  i = 0;
i < 60; ++i) {
            incrementCounter();
        }
	}
}
