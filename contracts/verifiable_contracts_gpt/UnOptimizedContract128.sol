pragma solidity ^0.5.0;

contract unOptimizedContract128 {
    
    //Declare a mapping to store the number of tokens owned by each address
    mapping(address => uint256) public tokenBalance;

    //Declare a function to mint tokens
    function mint(address _to, uint256 _amount) public {
        //Update the token balance of the given address
        tokenBalance[_to] += _amount;
    }

    //Declare a function to transfer tokens
    function transfer(address _from, address _to, uint256 _amount) public {
        //Check if the sender has enough tokens
        require(tokenBalance[_from] >= _amount);
        //Update the token balance of the sender and the receiver
        tokenBalance[_from] -= _amount;
        tokenBalance[_to] += _amount;
    }
}