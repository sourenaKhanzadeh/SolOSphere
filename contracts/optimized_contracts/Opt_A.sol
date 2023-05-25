pragma solidity ^0.8.0;
contract Opt_A {
    int public res = 23;
	constructor()  {
        	}
	function foo() public pure returns (int) {
        return 10;
	}
	function bar() public pure returns (int) {
        return 20;
	}
	function fooBar() public returns (int) {
        int  res_ = res;
        for (uint  i = 0;
i < 100; ++i) {
            res_ += foo();
res_ += bar();
        }
res = res_;
return res;
	}
}
