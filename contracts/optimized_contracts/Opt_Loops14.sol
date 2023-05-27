pragma solidity ^0.5.0;
contract Opt_loops14 {
    uint256 default counter = 0;
    uint256 default limit = 10;
	constructor() public {
        	}
	function loop() public {
                while (counter < limit) {
            ++counter;
        }
	}
}
