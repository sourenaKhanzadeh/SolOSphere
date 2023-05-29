pragma solidity ^0.5.0;

contract loops100 {
  uint256 public count;

  constructor() public {
    count = 0;
  }

  function loop100() public {
    for (uint256 i = 0; i < 100; i++) {
      count++;
    }
  }
}