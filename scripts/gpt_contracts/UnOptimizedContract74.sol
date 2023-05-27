pragma solidity ^0.5.0;

contract unOptimizedContract74 {

    // Data
    uint256 public myNumber;

    // Constructor
    constructor() public {
        myNumber = 74;
    }

    // Getter function for myNumber
    function getMyNumber() public view returns (uint256) {
        return myNumber;
    }

}