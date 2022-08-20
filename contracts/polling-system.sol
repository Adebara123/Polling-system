// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract polling_system {

        uint voteEnd;
       
        constructor (uint time){
           voteEnd  = block.timestamp + time;
        }
        
    address[] public listOfVoters;

    mapping(uint => uint) votes;


    modifier timeGone () {
        require (voteEnd > block.timestamp, "Vote ended already");
        _;
    }

    function  check(address voter) internal {
        for (uint i; i < listOfVoters.length; i++) {
            if (listOfVoters[i] == voter) {
                revert("you can't vote again");
            }else {
                listOfVoters.push(voter);
            }
        }
    }

    function vote (uint ID) public {
        check(msg.sender);
        uint theVotes = 1;
        votes[ID] += theVotes;
    }

    function seeVotes (uint ID) public view returns (uint voteResult){
        voteResult = votes[ID];
    } 


}