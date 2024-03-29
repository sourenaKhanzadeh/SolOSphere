/**
 *Submitted for verification at Etherscan.io on 2019-08-12
*/

pragma solidity 0.4.25;

/**
 * @title ERC20 interface
 * @dev see https://eips.ethereum.org/EIPS/eip-20
 */
contract IERC20 {
    function transfer(address to, uint256 value) public returns (bool);

    function approve(address spender, uint256 value) public returns (bool);

    function transferFrom(address from, address to, uint256 value) public returns (bool);

    function balanceOf(address who) public view returns (uint256);

    function allowance(address owner, address spender) public view returns (uint256);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract Auth {

  address internal admin;

  event OwnershipTransferred(address indexed _previousOwner, address indexed _newOwner);

  constructor(address _admin) internal {
    admin = _admin;
  }

  modifier onlyAdmin() {
    require(msg.sender == admin, "onlyAdmin");
    _;
  }

  function transferOwnership(address _newOwner) onlyAdmin internal {
    require(_newOwner != address(0x0), "Invalid admin address");
    admin = _newOwner;
    emit OwnershipTransferred(msg.sender, _newOwner);
  }
}

/**
 * @title SafeMath
 * @dev Unsigned math operations with safety checks that revert on error.
 */
library SafeMath {
  /**
   * @dev Multiplies two unsigned integers, reverts on overflow.
   */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
    // benefit is lost if 'b' is also tested.
    // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
    if (a == 0) {
      return 0;
    }

    uint256 c = a * b;
    require(c / a == b);

    return c;
  }

  /**
   * @dev Integer division of two unsigned integers truncating the quotient, reverts on division by zero.
   */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // Solidity only automatically asserts when dividing by 0
    require(b > 0);
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold

    return c;
  }

  /**
   * @dev Subtracts two unsigned integers, reverts on overflow (i.e. if subtrahend is greater than minuend).
   */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a);
    uint256 c = a - b;

    return c;
  }

  /**
   * @dev Adds two unsigned integers, reverts on overflow.
   */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a);

    return c;
  }

  /**
   * @dev Divides two unsigned integers and returns the remainder (unsigned integer modulo),
   * reverts when dividing by zero.
   */
  function mod(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b != 0);
    return a % b;
  }
}

contract DABANKING_SWAP is Auth {
  using SafeMath for uint;

  IERC20 public daaBounty = IERC20(0x4D566B0b911756C77A327152b862327ff719bFfF);
  IERC20 public daBanking = IERC20(0x5E7Ebea68ab05198F771d77a875480314f1d0aae);
  uint8 public rate = 100;

  event TokenSwapped(address indexed user, uint daaAmount, uint dabAmount);

  constructor(address _admin) Auth(_admin) public {}

  function swap(uint _daaAmount) public {
    require(daaBounty.balanceOf(msg.sender) >= _daaAmount, "You have not enough balance");
    require(daaBounty.allowance(msg.sender, address(this)) >= _daaAmount, "You must call approve() first");
    uint dabAmount = _daaAmount.div(rate);
    require(daBanking.balanceOf(address(this)) >= dabAmount, "Contract have not enough DAB");
    require(daaBounty.transferFrom(msg.sender, address(this), _daaAmount), "Transfer token failed");
    require(daBanking.transfer(msg.sender, dabAmount), "Transfer DAB to user failed");
    emit TokenSwapped(msg.sender, _daaAmount, dabAmount);
  }

  function setRate(uint8 _rate) onlyAdmin public {
    require(_rate > 0 && _rate != rate, "Rate is invalid");
    rate = _rate;
  }

  function updateAdmin(address _newAdmin) public {
    transferOwnership(_newAdmin);
  }
}