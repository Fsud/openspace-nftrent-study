// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import { Test, console } from "forge-std/Test.sol";
import { RenftMarket } from "../src/RenftMarket.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract RenftMarketTest is Test {
  RenftMarket market;

  bytes32 ORDER_TYPEHASH = keccak256(
    "RentoutOrder(address maker,address nft_ca,uint256 token_id,uint256 daily_rent,uint256 max_rental_duration,uint256 min_collateral,uint256 list_endtime)"
  );

  function setUp() public {
    market = new RenftMarket();
  }

  function test_borrow() view public {
    RenftMarket.RentoutOrder memory order = RenftMarket.RentoutOrder({
      maker: 0xaDBB884cBE72c934bf54B29430d73c5e844fFCCA,
      nft_ca: 0x037bF315FDF5276BC5D43fc2bB121Fa60F50bc9c,
      token_id: 2,
      daily_rent: 10000000000000000,
      max_rental_duration: 604800,
      min_collateral: 50000000000000000,
      list_endtime: 1715860379
    });

    bytes memory sig =
      hex"8a8d10794c8d55f625e19154fde9ccd6e73deeb9cb1a6dc4a0640c7a04ebbf557de3cf94eaaee7cb9c22fc1688d522beecababb739b646fc50d4a5033e8e15211b";

    // address signer = ECDSA.recover(market.orderHash(order), sig);
    // assertEq(signer, address(0xaDBB884cBE72c934bf54B29430d73c5e844fFCCA));
  }
}
