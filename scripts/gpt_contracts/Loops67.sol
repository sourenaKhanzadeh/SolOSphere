pragma solidity ^0.5.0;

contract loops67 {
    
    //Looping through a range of numbers
    function loopThroughRange() public returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < 10; i++) {
            sum += i;
        }
        return sum;
    }
    
    //Looping through an array
    function loopThroughArray(uint[] memory arr) public returns (uint) {
        uint sum = 0;
        for (uint j = 0; j < arr.length; j++) {
            sum += arr[j];
        }
        return sum;
    }
    
    //Looping through a mapping
    mapping (uint => uint) public m;
    
    function loopThroughMapping() public returns (uint) {
        uint sum = 0;
        for (uint k = 0; k < m.length; k++) {
            sum += m[k];
        }
        return sum;
    }

}