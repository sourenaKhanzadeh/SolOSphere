pragma solidity ^0.6.6;
contract Opt_loops50 {
    uint256 default counter = 0;
    uint256 default constant maxCounter = 50;
	function incrementCounter() public {
        require(counter < maxCounter);
++counter;
	}
	function resetCounter() public {
        counter = 0;
	}
	function isComplete() public view returns (bool) {
        return (counter == maxCounter);
	}
}
