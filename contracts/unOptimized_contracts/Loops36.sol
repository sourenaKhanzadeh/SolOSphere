pragma solidity ^0.5.0;

contract loops36 {
    uint256 public counter;

    function loop() public {
        for(uint256 i = 0; i < 36; i++){
            counter++;
        }
    }
}