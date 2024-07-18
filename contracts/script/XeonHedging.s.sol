// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Script} from "forge-std/Script.sol";
import {console2} from "forge-std/console2.sol";
import {XeonHedging} from "../src/XeonHedging.sol";

contract XeonHedgingScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast(vm.envUint("DEPLOYER_PRIVATE_KEY"));

        // deploy hedging
        console2.log("deploying XeonHedging contract...");
        XeonHedging hedging = new XeonHedging();

        vm.stopBroadcast();
    }
}
