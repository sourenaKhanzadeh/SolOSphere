pragma solidity ^0.5.1;
contract Opt_loops51 {
    uint public count = 0;
	constructor() public {
        	}
	function increaseCount() public {
                for (uint  i = 0;
i < 51; ++i) {
            ++count;
        }
	}
}
