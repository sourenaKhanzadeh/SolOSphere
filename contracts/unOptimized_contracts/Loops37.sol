pragma solidity ^0.5.0;

contract loops37 {
    uint public count;

    constructor() public {
        count = 0;
    }

    function loop37() public {
        for (uint i=1; i<=37; i++) {
            count++;
        }
    }
}