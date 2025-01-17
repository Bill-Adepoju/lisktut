// SPDX-License-Identifier: MIT

pragma solidity ^0.8.23;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint256 public currentTokenId;

    //create ERC721 token -lisk
    constructor() ERC721("Lisk", "LSK"){}

    //mint function

    function mint(address recipient) public payable returns (uint256){
        uint256 newItemId = ++currentTokenId;
        _safeMint(recipient, newItemId);
        return newItemId;
    }
} 