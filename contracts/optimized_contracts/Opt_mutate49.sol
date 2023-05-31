pragma solidity ^0.8.0;
contract Opt_mutated49 {
    int public counter = 18816000;
    int public x = 10;
    uint[] public array;
	constructor()  {
        	}
	function loop24() public {
        int  counter_ = counter;
        for (uint256  i = 0;
i < 24; i++) {
            counter_ += 10;
        }
counter = counter_;
	}
	function loop25(int[] calldata arr) public {
        int  x_ = x;
uint256  arr_len = arr.length;
x = x_;
        for (uint256  i = 0;
i < arr_len; i++) {
            x_ += arr[i] * 2;
        }
	}
}
