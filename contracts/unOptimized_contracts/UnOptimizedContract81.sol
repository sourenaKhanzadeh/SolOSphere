pragma solidity ^0.6.0;

contract unOptimizedContract81 {
    // Define the state variables
    string public name;
    uint public age;
    uint public balance;
    address public owner;

    // Constructor
    constructor() public {
        name = "John Doe";
        age = 25;
        balance = 1000;
        owner = msg.sender;
    }

    // Getter function to retrieve the name
    function getName() public view returns (string memory) {
        return name;
    }

    // Getter function to retrieve the age
    function getAge() public view returns (uint) {
        return age;
    }

    // Getter function to retrieve the balance
    function getBalance() public view returns (uint) {
        return balance;
    }
}
// Function to increase the