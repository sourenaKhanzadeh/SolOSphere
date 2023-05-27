pragma solidity ^0.5.0;
contract Opt_loops5 {
    uint256 public counter = 0;
	constructor() public {
        	}
	function loop5() public {
                for (uint256  i = 0;
i < 5; ++i) {
            ++counter;
        }
	}
}
