// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract NFTToken {
    event Mint (address to, uint256 id, bytes32 has);
    event Tranfer(address to, uint256 id);
    uint256 public tokenCounter;
    mapping(uint256 => address) public tokenOwner;
    address owner;

    constructor ()  {
        owner = msg.sender;
    }

        function mint(address to, bytes32 ipfsHash) public {    
        require(msg.sender == owner);    
        uint256 tokenId = tokenCounter + 1;
        tokenOwner[tokenId] = to;
        tokenCounter++;
        emit Mint (to, tokenId, ipfsHash);
    }

    function Transfer(address to, uint256 id) public {
        require (tokenOwner[id] == msg.sender);
        tokenOwner[id] = to;
    }
}