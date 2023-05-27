pragma solidity ^0.5.0;
contract Opt_unOptimizedContract109 {
    uint public count = 0;
    string public name = 'unOptimizedContract109';
	constructor() public {
        	}
	function incrementCount() public {
        ++count;
	}
	function getCount() public view returns (uint) {
        return count;
	}
	function getName() public view returns (string) {
        return name;
	}
}
