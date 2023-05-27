pragma solidity ^0.6.2;
contract Opt_loops62 {
    uint256 public constant count;
	function increment() public {
        ++count;
	}
	function loop() public {
                for (uint256  i = 0;
i <= 10; ++i) {
            increment();
        }
	}
}
