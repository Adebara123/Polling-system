// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./polling-system.sol";

contract factoryPolling {
    polling_system[] public pollingContracts;

    event showPolls (uint indexed position , polling_system indexed);

   function addPoll (uint time) public returns (polling_system PSF) {
        PSF = new polling_system(time);
        pollingContracts.push(PSF);
        emit showPolls(pollingContracts.length, PSF);
   }

    function showAllPolls () public view returns (polling_system[] memory polls){
        polls = pollingContracts;
    }

}