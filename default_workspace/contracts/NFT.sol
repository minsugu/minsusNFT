// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";

contract newNFT is NFTokenMetadata, Ownable {
 constructor() {
   //define nft name of choice and symbol
   nftName = "minsus test card";
   nftSymbol = "STNF";
 }
 
 function mint(address _to, uint256 _tokenId, string calldata _uri) external onlyOwner {
   super._mint(_to, _tokenId);
   super._setTokenUri(_tokenId, _uri);
 }
}