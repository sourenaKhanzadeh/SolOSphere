// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract A {
    string public res;

    constructor(){
        // do something
        res = "A";
    }

    function foo() public pure returns(string memory){
        return "A";
    }

    function bar() public pure returns(string memory){
        return "A";
    }

    function fooBar() public returns(string memory){
        for(uint i=0; i<100; i++){
            res += foo();
            res += bar();
        }
        return res;
    }
}
