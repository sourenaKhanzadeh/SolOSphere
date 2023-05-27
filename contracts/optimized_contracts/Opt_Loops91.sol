pragma solidity ^0.5.0;
contract Opt_loops91 {
    uint256 default constant loopSize = 10;
    uint256 default constant loopStart = 1;
    uint256 default constant loopEnd = loopStart + loopSize;
    uint256 default constant loopCounter = loopStart;
    uint256 default constant loopResult = 0;
	function startLoop() public {
        uint256  loopResult_ = loopResult;
uint256  loopCounter_ = loopCounter;
loopResult = loopResult_;
        while (loopCounter < loopEnd) {
            loopResult_ += loopCounter_;
++loopCounter;
        }
loopCounter = loopCounter_;
	}
	function getLoopResult() public view returns (uint256) {
        return loopResult;
	}
}
