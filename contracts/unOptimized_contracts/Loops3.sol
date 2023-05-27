pragma solidity ^0.5.0;

contract loops3 {
    uint256 public counter;
    
    constructor() public {
        counter = 0;
    }
    
    function loop1() public {
        for (uint256 i = 0; i < 10; i++) {
            counter++;
        }
    }
    
    function loop2() public {
        for (uint256 j = 0; j < 10; j++) {
            for (uint256 k = 0; k < 10; k++) {
                counter++;
            }
        }
    }
    
    function loop3() public {
        for (uint256 l = 0; l < 10; l++) {
            for (uint256 m = 0; m < 10; m++) {
                for (uint256 n = 0; n < 10; n++) {
                    counter++;
                }
            }
        }
    }
}