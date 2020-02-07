pragma solidity >=0.4.21 <0.7.0;

contract Election {
    // store candidate

    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    //fetch candidate
    mapping(uint256 => Candidate) public candidates;

    uint256 public candidatesCount;
    // read candidate
    // constructor

    constructor() public {
        addCandidate("Phil Nge");
        addCandidate("J Ohaiye");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

}
