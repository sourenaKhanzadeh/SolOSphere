pragma solidity ^0.5.0;

contract Loops9 {
    uint public counter;

    function loop9() public {
        for (uint i = 0; i < 9; i++) {
            counter++;
        }
    }

}