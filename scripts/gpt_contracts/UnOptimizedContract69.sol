pragma solidity ^0.6.0;

contract unOptimizedContract69 {
    // Define the state variables
    string public name;
    uint public age;
    uint public balance;

    // Constructor
    constructor() public {
        name = "John Doe";
        age = 18;
        balance = 0;
    }

    // Functions
    function setName(string memory _name) public {
        name = _name;
    }

    function setAge(uint _age) public {
        age = _age;
    }

    function setBalance(uint _balance) public {
        balance = _balance;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint) {
        return age;
    }