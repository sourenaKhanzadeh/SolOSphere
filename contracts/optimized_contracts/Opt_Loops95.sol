pragma solidity ^0.5.0;
contract Opt_loops95 {
    uint public total;
	function loop95() public {
        uint  total_ = total;
total = 0;
total = total_;
        for (uint  i = 0;
i < 95; ++i) {
            total_ += i;
        }
	}
	function getTotal() public view returns (uint) {
        return total;
	}
}
