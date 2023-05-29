pragma solidity ^0.6.0;

contract unOptimizedContract64 {
    
    // Store a mapping of addresses to uint values
    mapping(address => uint) public balances;

    // Initialize the contract with a given amount of tokens
    constructor(uint initialSupply) public {
        balances[msg.sender] = initialSupply;
    }

    // Transfer tokens from one address to another
    function transfer(address _to, uint _value) public {
        require(balances[msg.sender] >= _value);
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }

    // Get the balance of an address
    function balanceOf(address _owner) public view returns(uint) {
        return balances[_owner];
    }
}