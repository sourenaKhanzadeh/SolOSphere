pragma solidity ^0.5.0;
contract Opt_loops67 {
    uint => uint public constant m;
	function loopThroughRange() public returns (uint) {
        uint  sum = 0;
        for (uint  i = 0;
i < 10; ++i) {
            sum += i;
        }
return sum;
	}
	function loopThroughArray(uint[] calldata arr) public returns (uint) {
        uint256  arr_len = arr.length;
uint  sum = 0;
        for (uint  j = 0;
j < arr_len; ++j) {
            sum += arr[j];
        }
return sum;
	}
	function loopThroughMapping() public returns (uint) {
        uint  sum = 0;
        for (uint  k = 0;
k < 100; ++k) {
            sum += m[k];
        }
return sum;
	}
}
