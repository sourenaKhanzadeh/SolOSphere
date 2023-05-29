pragma solidity ^0.5.0;

contract unOptimizedContract61 {
    // Contract variables
    uint public totalSupply;
    mapping (address => uint) public balances;
    mapping (address => mapping (address => uint)) public allowed;

    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Constructor
    constructor() public {
        totalSupply = 0;
    }

    // Function to transfer tokens from one address to another
    function transfer(address _to, uint256 _value) public {
        // Check if sender has enough balance
        require(balances[msg.sender] >= _value);

        // Subtract from the sender
        balances[msg.sender] -= _value;
        // Add the same to the recipient
        balances[_to] += _value;