// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface Ipolling_system {

    function vote (uint ID) external;

    function seeVotes (uint ID) external view returns (uint voteResult);
}