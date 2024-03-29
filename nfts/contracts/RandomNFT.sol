// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./RandomNumber.sol";

contract RandomPriates is ERC721 {
    string constant BASE_URI = "https://igqc37.deta.dev/pirates/";

    uint immutable i_whitebeardProb;
    uint immutable i_redhairedProb;
    uint immutable i_blackbeardProb;

    uint immutable i_whitebeardRange;
    uint immutable i_redhairedRange;
    uint immutable i_blackbeardRange;

    uint s_whitebeardCount;
    uint s_redhairedCount;
    uint s_blackbeardCount;

    address immutable i_randomNumberContractAddress;

    constructor(
        address _randomNumContract,
        uint _whitebeardProb,
        uint _redhairedProb,
        uint _blackbeardProb
    ) ERC721("Pirates", "PRT") {
        i_randomNumberContractAddress = _randomNumContract;

        i_whitebeardProb = _whitebeardProb;
        i_redhairedProb = _redhairedProb;
        i_blackbeardProb = _blackbeardProb;

        i_whitebeardRange = _whitebeardProb - 1;
        i_redhairedRange = i_whitebeardRange + _redhairedProb;
        i_blackbeardRange = i_redhairedRange + _blackbeardProb;
        require(
            i_blackbeardRange < 100,
            "Givern probabilities are not correct"
        );
    }

    function getProbabilities()
        public
        view
        returns (
            uint whitebeardProb,
            uint redhairedProb,
            uint blackbeardProb
        )
    {
        whitebeardProb = i_whitebeardProb;
        redhairedProb = i_redhairedProb;
        blackbeardProb = i_blackbeardProb;
    }

    function getRanges()
        public
        view
        returns (
            uint whitebearedRagne,
            uint redhairedRange,
            uint blackbeardRange
        )
    {
        whitebearedRagne = i_whitebeardRange;
        redhairedRange = i_redhairedRange;
        blackbeardRange = i_blackbeardRange;
    }

    function getCounts()
        public
        view
        returns (
            uint whitebeardCount,
            uint redhairedCount,
            uint blackbeardCount
        )
    {
        whitebeardCount = s_whitebeardCount;
        redhairedCount = s_redhairedCount;
        blackbeardCount = s_blackbeardCount;
    }

    function getRandomNumber() internal view returns (uint) {
        uint totalCount = s_whitebeardCount +
            s_redhairedCount +
            s_blackbeardCount;
        uint seed = totalCount;
        uint randomNumber = IRandomNumber(i_randomNumberContractAddress)
            .psudoRandomNumber(seed);
        return randomNumber % 100;
    }

    function mint() public {
        uint randomNumber = getRandomNumber();
        uint currCount = 0;
        uint token = 0;
        if (randomNumber <= i_whitebeardRange) {
            currCount = s_whitebeardCount;
            token = 0;
            s_whitebeardCount = currCount + 1;
        } else if (randomNumber <= i_redhairedRange) {
            currCount = s_redhairedCount;
            token = 1;
            s_redhairedCount = currCount + 1;
        } else if (randomNumber <= i_blackbeardRange) {
            currCount = s_blackbeardCount;
            token = 2;
            s_blackbeardCount = currCount + 1;
        }

        uint tokenId = currCount * 3 + token;

        _safeMint(msg.sender, tokenId);
    }

    function tokenURI(uint _tokenId)
        public
        pure
        override
        returns (string memory)
    {
        return string.concat(BASE_URI, Strings.toString(_tokenId % 3));
    }
}
