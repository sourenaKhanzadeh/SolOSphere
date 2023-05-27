pragma solidity ^0.5.0;

contract unOptimizedContract125 {
    // State variables
    uint256 public count;
    mapping (address => uint256) public balances;
    
    // Constructor
    constructor() public {
        count = 0;
    }
    
    // Functions
    function incrementCount() public {
        count++;
    }
    
    function getCount() public view returns (uint256) {
        return count;
    }
    
    function deposit() public payable {
        require(msg.value > 0);
        balances[msg.sender] += msg.value;
    }
    
    function withdraw(uint256 _amount) public {
        require(balances[msg.sender] >= _amount);
        balances[msg.sender] -= _amount;
        msg.s