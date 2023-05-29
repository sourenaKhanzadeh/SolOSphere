pragma solidity ^0.6.6;

contract unOptimizedContract72 {
    
    uint private value;
    
    function setValue(uint _value) public {
        value = _value;
    }
    
    function getValue() public view returns (uint) {
        return value;
    }
    
    function incrementValue() public {
        value++;
    }
    
    function decrementValue() public {
        value--;
    }
}