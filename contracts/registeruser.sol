pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol"

contract registerUser {
  mapping (address => bool) registeredUsers;

  function registerUser() external {
    registeredUsers[msg.sender] = true;
  }

  modifier isRegistered() {
    require(registeredUsers[msg.sender] == true);
    _;
  }
}