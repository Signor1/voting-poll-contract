// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./VotingPoll.sol";

contract VotingPollFactory {
    VotingPoll[] votingPollClones;

    function createAVotingPoll()
        external
        returns (VotingPoll newPoll_, uint256 length_)
    {
        newPoll_ = new VotingPoll();

        votingPollClones.push(newPoll_);

        length_ = votingPollClones.length;
    }

    function getVotingPollClones() external view returns (VotingPoll[] memory) {
        return votingPollClones;
    }
}
