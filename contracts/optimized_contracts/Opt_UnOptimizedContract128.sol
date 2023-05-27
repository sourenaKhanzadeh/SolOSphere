pragma solidity ^0.5.0;
contract Opt_unOptimizedContract128 {
    address => uint256 public constant tokenBalance;
	function mint(address _to, uint256 _amount) public {
        tokenBalance[_to] += _amount;
	}
	function transfer(address _from, address _to, uint256 _amount) public {
        require(tokenBalance[_from] >= _amount);
tokenBalance[_from] -= _amount;
tokenBalance[_to] += _amount;
	}
}
