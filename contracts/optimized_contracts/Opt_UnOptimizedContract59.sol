pragma solidity ^0.6.0;
contract Opt_unOptimizedContract59 {
    address public owner = msg.sender;
    uint public balance = 0;
	constructor() public {
        	}
	function receive() public payable {
        balance += msg.value;
	}
	function transfer(address _to, uint _amount) public {
        require(balance >= _amount);
_to.transfer(_amount);
balance -= _amount;
	}
	function destroy() public {
        require(msg.sender == owner);
	}
}
