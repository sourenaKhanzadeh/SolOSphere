pragma solidity ^0.6.0;

contract unOptimizedContract46 {

    // This is the constructor
    constructor() public {
    }

    // This function sets the value of a given address
    function setValue(address _address, uint256 _value) public {
        _address.transfer(_value);
    }

    // This function gets the value of a given address
    function getValue(address _address) public view returns (uint256) {
        return _address.balance;
    }

}