pragma solidity ^0.6.0;

contract unOptimizedContract120 {

    //Declare a mapping to store the balances of each address
    mapping (address => uint) public balances;

    //Declare an event to be emitted when a payment is made
    event PaymentMade(address from, address to, uint amount);

    //Function to deposit funds into the contract
    function deposit() public payable {
        //Add the amount sent to the sender's balance
        balances[msg.sender] += msg.value;
    }

    //Function to transfer funds from one address to another
    function transfer(address to, uint amount) public {
        //Ensure the sender has enough funds to make the transfer
        require(balances[msg.sender] >= amount);
        //Subtract the amount from the sender's balance
        balances[msg.s