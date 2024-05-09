// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import { Script, console } from "forge-std/Script.sol";
import "../src/RenftMarket.sol";

contract RenftMarketScript is Script {
  function setUp() public { }

  function run() public {
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

    vm.startBroadcast(deployerPrivateKey);
    new RenftMarket();
    vm.stopBroadcast();
  }
}
