pragma solidity ^0.5.0;
contract Opt_loops32 {
    uint public count = 0;
	constructor() public {
        	}
	function loop32() public {
                for (uint  i = 0;
i < 32; ++i) {
            ++count;
        }
	}
}
