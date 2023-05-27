pragma solidity ^0.5.0;
contract Opt_loops82 {
    uint public total;
	function loop() public {
        uint  total_ = total;
total = 0;
total = total_;
        for (uint  i = 0;
i < 10; ++i) {
            total_ += i;
        }
	}
}
