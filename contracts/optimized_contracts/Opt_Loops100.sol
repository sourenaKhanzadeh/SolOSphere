pragma solidity ^0.5.0;
contract Opt_loops100 {
    uint256 public count = 0;
	constructor() public {
        	}
	function loop100() public {
                for (uint256  i = 0;
i < 100; ++i) {
            ++count;
        }
	}
}
