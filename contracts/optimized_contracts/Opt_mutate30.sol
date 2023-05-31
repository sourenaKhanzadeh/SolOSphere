pragma solidity ^0.8.0;
contract Opt_mutated30 {
    uint public counter = 18816000;
    uint public x = 10;
    uint[] public array;
	constructor()  {
        	}
	function loop24() public {
        uint  counter_ = counter;
        for (uint256  i = 0;
i < 24; i++) {
            counter_ += 10 * i;
        }
counter = counter_;
	}
	function loop25(uint[] calldata arr) public {
        uint  x_ = x;
uint256  arr_len = arr.length;
x = x_;
        for (uint256  i = 0;
i < arr_len; i++) {
            x_ += arr[i] * i;
        }
	}
}
