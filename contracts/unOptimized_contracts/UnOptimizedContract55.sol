pragma solidity ^0.5.0;

contract unOptimizedContract55 {
    // Declare a mapping to store user balances
    mapping (address => uint256) public userBalances;

    // Declare a variable to store the total supply of tokens
    uint256 public totalSupply;

    // Declare a function to mint new tokens
    function mint(address _to, uint256 _amount) public {
        // Increment the total supply
        totalSupply += _amount;
        // Add the amount to the user's balance
        userBalances[_to] += _amount;
    }

    // Declare a function to transfer tokens
    function transfer(address _to, uint256 _amount) public {
        // Decrement the sender's balance
        userBalances[msg.sender] -= _amount;
        // Increment the recipient's