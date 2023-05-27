pragma solidity ^0.6.6;

contract unOptimizedContract56 {
    //Storage
    uint256 public count;
    mapping (address => uint256) public balances;
    
    //Constructor
    constructor() public {
        count = 0;
    }
    
    //Function to increment count
    function incrementCount() public {
        count++;
    }
    
    //Function to get count
    function getCount() public view returns (uint256) {
        return count;
    }
    
    //Function to get balance of an address
    function getBalance(address _address) public view returns (uint256) {
        return balances[_address];
    }
    
    //Function to add balance to an address
    function addBalance(address _address, uint256 _amount) public {
        balances[_address] +=