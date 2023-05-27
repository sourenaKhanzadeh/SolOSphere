pragma solidity ^0.5.0;
contract Opt_loops75 {
    uint256 public total;
	function loop75() public {
        uint256  total_ = total;
total = 0;
total = total_;
        for (uint256  i = 0;
i < 75; ++i) {
            total_ += i;
        }
	}
}
