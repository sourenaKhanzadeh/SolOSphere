pragma solidity ^0.5.0;

contract unOptimizedContract79 {
    uint public totalSupply;

    mapping (address => uint) public balances;

    constructor() public {
        totalSupply = 0;
    }

    function deposit() public {
        totalSupply++;
        balances[msg.sender]++;
    }

    function withdraw() public {
        require(balances[msg.sender] > 0, "Insufficient balance");
        totalSupply--;
        balances[msg.sender]--;
    }
}