pragma solidity ^0.6.0;

contract unOptimizedContract59 {
    // Define state variables
    address public owner;
    uint public balance;

    // Constructor
    constructor() public {
        owner = msg.sender;
        balance = 0;
    }

    // Receive funds
    function receive() public payable {
        balance += msg.value;
    }

    // Transfer funds
    function transfer(address payable _to, uint _amount) public {
        require(balance >= _amount);
        _to.transfer(_amount);
        balance -= _amount;
    }

    // Destroy contract
    function destroy() public {
        require(msg.sender == owner);
        selfdestruct(owner);
    }
}