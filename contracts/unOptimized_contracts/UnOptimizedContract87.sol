pragma solidity ^0.5.0;

contract unOptimizedContract87 {
    uint public counter;

    function incrementCounter() public {
        counter++;
    }

    function decrementCounter() public {
        counter--;
    }

    function getCounter() public view returns(uint) {
        return counter;
    }
}