pragma solidity ^0.6.6;

contract unOptimizedContract86 {
    
    address payable owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function transfer(address payable _to, uint256 _value) public {
        require(msg.sender == owner);
        _to.transfer(_value);
    }
    
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
    
    function withdraw() public {
        require(msg.sender == owner);
        owner.transfer(address(this).balance);
    }
    
}