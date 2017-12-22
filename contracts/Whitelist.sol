pragma solidity ^0.4.18;

/**
 * @title Whitelist
 * @dev Handles a list inversors with max amounts to be used in a presale
 */
contract Whitelist {

  mapping(address => uint256) whitelist;

  function add(address investor, uint256 amount) public {
    whitelist[investor] = amount;
  }

  function remove(address investor) public{
    delete whitelist[investor];
  }

  function isWhitelisted(address investor) public view returns (bool) {
    return whitelist[investor] != 0;
  }

  function getBoundary(address investor) public view returns (uint256) {
    return whitelist[investor];
  }
}