pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Test123 is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Test123(address _owner)  UpgradeableToken(_owner) {
    name = "Test123";
    symbol = "TEST";
    totalSupply = 1000000000;
    decimals = 3;

    balances[_owner] = totalSupply;
  }
}