pragma solidity ^0.4.25;

contract unOptimizedContract53 {
    uint256 public counter;

    function incrementCounter() public {
        counter++;
    }

    function decrementCounter() public {
        counter--;
    }

    function getCounter() public view returns (uint256) {
        return counter;
    }
}