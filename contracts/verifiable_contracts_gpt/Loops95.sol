pragma solidity ^0.5.0;

contract loops95 {
    uint public total;
    
    function loop95() public {
        total = 0;
        for(uint i = 0; i < 95; i++) {
            total += i;
        }
    }
    
    function getTotal() public view returns (uint) {
        return total;
    }
}