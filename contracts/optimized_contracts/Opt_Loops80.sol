pragma solidity ^0.5.11;
contract Opt_loops80 {
    uint public counter = 0;
	constructor() public {
        	}
	function loopCounter() public returns (uint) {
                for (uint  i = 0;
i < 80; ++i) {
            ++counter;
        }
return counter;
	}
}
