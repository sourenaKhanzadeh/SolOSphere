pragma solidity ^0.5.0;

contract unOptimizedContract71 {
    
    //Declare a string variable
    string public message;
    
    //Constructor
    constructor() public {
        message = "Hello World!";
    }
    
    //Function to update the message
    function updateMessage(string memory _message) public {
        message = _message;
    }
    
    //Function to get the message
    function getMessage() public view returns (string memory) {
        return message;
    }
}