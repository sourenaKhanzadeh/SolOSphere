pragma solidity ^0.8.0;

// SPDX-License-Identifier: UNLICENSED
contract mutated6 {
    int public counter;
    int public x = 10;
    uint [] public array;

    constructor(){
        counter = 10 * 20*30*56 *56;
    }

    function loop24() public {
        for (uint256 i = 0; i < 24; i++) {
            counter += 10;
        }
    }

    function loop25(int [] memory arr) public {
        for (uint256 i = 0; i < arr.length; i++) {
            array.push(arr[i]);
            x += arr[i];
        }
    }
}