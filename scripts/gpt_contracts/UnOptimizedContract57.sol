pragma solidity ^0.5.0;

contract unOptimizedContract57 {
    
    // State variables
    uint public counter;
    mapping (address => uint) public balances;
    
    // Constructor
    constructor() public {
        counter = 0;
    }
    
    // Functions
    function incrementCounter() public {
        counter = counter + 1;
    }
    
    function decrementCounter() public {
        counter = counter - 1;
    }
    
    function getCounter() public view returns (uint) {
        return counter;
    }
    
    function deposit() public payable {
        balances[msg.sender] = balances[msg.sender] + msg.value;
    }
    
    function withdraw(uint amount) public {
        require(balances[msg.sender] >=