// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

//this is a two level challenge and you must complete level 1 before attempting Level2
interface IChallenge {

    function level1(uint16 _key) external;

    function level2(string memory _name) external;

    function getAllwiners() external view returns (string[] memory _names);
}