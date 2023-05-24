contract A {
    string public res = 'A';
	constructor()  {
        	}
	function foo() external pure returns (string) {
        return 'A';
	}
	function bar() external pure returns (string) {
        return 'A';
	}
	function fooBar() external returns (string) {
        string  res_ = res;
        for (uint  i = 0;
i < 100; ++i) {
            res_ += foo();
res_ += bar();
        }
res = res_;
return res;
	}
}
