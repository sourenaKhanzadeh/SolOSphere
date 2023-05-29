pragma solidity ^0.5.0;

contract loops71 {

    // declare a storage variable
    uint public count;

    // constructor
    constructor() public {
        count = 0;
    }

    // function to increase count
    function increaseCount() public {
        for (uint i = 0; i < 71; i++) {
            count++;
        }
    }

}