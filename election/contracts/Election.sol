pragma solidity ^0.5.4;

contract Election {
    // Candidate struct
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Candidates mapping - contains every presidential candidate
    mapping(uint => Candidate) public candidates;
    // Number of presidential candidates
    uint public candidatesCount;

    // Voters mapping - contains every user that has voted
    mapping(address => bool) public voters;

    // Public constructor - adds the candidates
    constructor() public {
        addCandidate("Donald Trump");
        addCandidate("Joe Biden");
        addCandidate("Barack Obama");
        addCandidate("Elon Musk");
    }

    // Function for adding presidential candidates
    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    // Function for voting for a specific candidate
    function vote(uint _candidateId) public {
        require(!voters[msg.sender]);

        require(_candidateId > 0 && _candidateId <= candidatesCount);

        voters[msg.sender] = true;

        candidates[_candidateId].voteCount++;
    }

}