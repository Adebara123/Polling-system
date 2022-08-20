// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IFactory {
    function addPoll (uint time) external returns (polling_system PSF);

    function showAllPolls () public view returns (polling_system[] memory polls);
}