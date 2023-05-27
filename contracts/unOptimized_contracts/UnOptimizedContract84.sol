pragma solidity 0.6.6;

contract unOptimizedContract84 {
    uint public counter;
    
    function increment() public {
        counter++;
    }
    
    function decrement() public {
        counter--;
    }
    
    function getCounter() public view returns (uint) {
        return counter;
    }
}