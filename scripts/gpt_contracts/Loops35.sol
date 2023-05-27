pragma solidity ^0.6.0;

contract loops35{
    uint public counter;
    function looping() public{
        counter = 0;
        for(uint i = 0; i < 35; i++){
            counter++;
        }
    }
}