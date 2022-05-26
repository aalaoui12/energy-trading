pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol"

contract EnergyMarketplace {
  struct Ask {
    address producer;
    uint32 energy; // in kWh
    uint32 price;
    uint64 timestamp; // asks expire within 24 hours
  }

  struct Bid {
    address buyer;
    uint32 energy; // in kWh
    uint32 price;
    uint64 timestamp;
  }
}