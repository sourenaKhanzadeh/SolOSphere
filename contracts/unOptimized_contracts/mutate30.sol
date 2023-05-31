pragma solidity ^0.8.0;

contract mutated30 {
    uint public counter;
    uint public x = 10;
    uint [] public array;

    constructor(){
        counter = 10 * 20*30*56 *56;
    }

    function loop24() public {
        for (uint256 i = 0; i < 24; i++) {
            counter += 10 * i;
        }
    }

    function loop25(uint [] memory arr) public {
        for (uint256 i = 0; i < arr.length; i++) {
            x += arr[i] * i;
        }
    }
}