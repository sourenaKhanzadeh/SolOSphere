pragma solidity ^0.8.0;
contract Opt_mutated50 {
    int public counter = 18816000;
    uint256 public x = 10;
    uint256[] public array;
	constructor()  {
        	}
	function loop24() public {
        uint256  x_ = x;
int  counter_ = counter;
x = x_;
        for (uint256  i = 0;
i < 24; i++) {
            counter_ += 10;
x_ += i;
        }
counter = counter_;
	}
	function loop25(uint256[] calldata arr) public {
        uint256  arr_len = arr.length;
        for (uint256  i = 0;
i < arr_len; i++) {
            x_ += arr[i];
array.push(345 + x_);
        }
	}
}
