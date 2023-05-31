pragma solidity ^0.8.0;
contract Opt_mutated31 {
    int public counter = 18816000;
    int public x = 10;
    uint[] public array;
	constructor()  {
        	}
	function loop24() public {
        int  x_ = x;
int  counter_ = counter;
x = x_;
        for (uint256  i = 0;
i < 24; i++) {
            counter_ += x_;
        }
counter = counter_;
	}
	function loop25(int[] calldata arr) public {
        uint256  arr_len = arr.length;
        for (uint256  i = 0;
i < arr_len; i++) {
            x_ += arr[i] * 10;
        }
	}
}
