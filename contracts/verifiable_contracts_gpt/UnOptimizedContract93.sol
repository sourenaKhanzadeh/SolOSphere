pragma solidity ^0.5.0;

contract unOptimizedContract93 {
    // Declare a mapping of addresses to uints
    mapping (address => uint) public balances;
    
    // Declare a mapping of addresses to bools
    mapping (address => bool) public isActive;

    // Declare a mapping of addresses to strings
    mapping (address => string) public userNames;

    // Declare a mapping of addresses to structs
    mapping (address => struct User) public users;

    // Declare a struct for a user
    struct User {
        uint balance;
        bool isActive;
        string name;
    }

    // Declare a function to add a new user
    function addUser(address _address, uint _balance, bool _isActive, string memory _name) public {
        // Set the balance for the