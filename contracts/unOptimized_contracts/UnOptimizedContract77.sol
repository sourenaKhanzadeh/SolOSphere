pragma solidity ^0.5.0;

contract unOptimizedContract77 {

    // Declare a state variable to store a string
    string public message;

    // Declare a constructor to initialize the state variable
    constructor() public {
        message = "Hello, world!";
    }

    // Declare a public function to update the state variable
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    
    // Declare a public function to get the state variable
    function getMessage() public view returns (string memory) {
        return message;
    }

}