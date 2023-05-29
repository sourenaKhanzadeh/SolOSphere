pragma solidity ^0.5.1;

contract loops51 {
    //Define the state variable
    uint public count;
    
    //Constructor
    constructor() public {
        count = 0;
    }
    
    //Function to increase the count
    function increaseCount() public {
        for (uint i = 0; i < 51; i++) {
            count++;
        }
    }
}