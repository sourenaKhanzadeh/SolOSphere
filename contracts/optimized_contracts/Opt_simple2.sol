pragma solidity ^0.8.0;
contract Opt_simple2 {
    int public counter = 18816000;
	constructor()  {
        	}
	function loop24() public {
        int  counter_ = counter;
        for (uint256  i = 0;
i < 24; i++) {
            counter_ += 10;
        }
counter = counter_;
	}
}
