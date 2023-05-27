pragma solidity ^0.5.0;
contract Opt_unOptimizedContract55 {
    address => uint256 public constant userBalances;
    uint256 public totalSupply;
	function mint(address _to, uint256 _amount) public {
        totalSupply += _amount;
userBalances[_to] += _amount;
	}
	function transfer(address _to, uint256 _amount) public {
        userBalances[msg.sender] -= _amount;
	}
}
