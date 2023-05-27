pragma solidity ^0.5.0;

contract loops69 {
    
    function loop() public {
        uint x = 0;
        while (x < 10) {
            x++;
            if (x == 5) {
                break;
            }
        }
    }
}