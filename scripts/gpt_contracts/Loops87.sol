pragma solidity ^0.6.0;

contract loops87 {
    uint[] loopArray;

    constructor() public {
        loopArray = new uint[](10);
        for (uint i = 0; i < 10; i++) {
            loopArray[i] = i * 2;
        }
    }

    function getLoopArray() public view returns (uint[]) {
        return loopArray;
    }
}