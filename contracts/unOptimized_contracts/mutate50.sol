pragma solidity ^0.8.0;

contract mutated50 {
    int public counter;
    uint256 public x = 10;
    uint256 [] public array;

    constructor(){
        counter = 10 * 20*30*56 *56;
    }

    function loop24() public {
        for (uint256 i = 0; i < 24; i++) {
            counter += 10;
            x += i;
        }
    }

    function loop25(uint256 [] memory arr) public {
        for (uint256 i = 0; i < arr.length; i++) {
            x += arr[i];
            array.push(345 + x);
        }
    }
}