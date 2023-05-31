// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract simple2 {
    int public counter;
    constructor(){
        counter = 10 * 20*30*56 *56;
    }

    function loop24() public {
        for (uint256 i = 0; i < 24; i++) {
            counter += 10;
        }
    }
}
