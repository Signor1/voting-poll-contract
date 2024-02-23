// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract VotingPoll {
    enum Options {
        None,
        A,
        B,
        C
    }

    struct Poll {
        string name;
        string description;
        Options option;
        uint256 voteCount;
    }

    //array of votingPolls
    Poll[] private votingPolls;

    //key - value pair of voters address to boolean
    mapping(address => bool) voters;

    function addPoll(string memory _name, string memory _desc) public {
        //adding a Poll
        votingPolls.push(
            Poll({
                name: _name,
                description: _desc,
                option: Options.None,
                voteCount: 0
            })
        );
    }

    function vote(uint256 _pollIndex, Options _option) public {
        //checking if msg.sender has voted before
        require(!voters[msg.sender], "You've voted already");
        //checking for wrong Poll index
        require(_pollIndex < votingPolls.length, "Invalid Poll index");
        votingPolls[_pollIndex].option = _option;
        votingPolls[_pollIndex].voteCount++;
        voters[msg.sender] = true;
    }

    function getPollCount() public view returns (uint) {
        return votingPolls.length;
    }

    function getPoll(
        uint _pollIndex
    ) public view returns (string memory, string memory, Options, uint) {
        //checking for wrong Poll index
        require(_pollIndex < votingPolls.length, "Invalid Poll index");

        Poll memory poll = votingPolls[_pollIndex];

        return (poll.name, poll.description, poll.option, poll.voteCount);
    }
}
