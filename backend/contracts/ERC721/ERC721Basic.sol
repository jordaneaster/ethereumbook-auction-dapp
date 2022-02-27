// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


/**
 * @title ERC721 Non-Fungible Token Standard basic interface
 * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
 */
abstract contract ERC721Basic {
  event Transfer(address indexed _from, address indexed _to, uint256 _tokenId);
  event Approval(address indexed _owner, address indexed _approved, uint256 _tokenId);
  event ApprovalForAll(address indexed _owner, address indexed _operator, bool _approved);

  function balanceOf(address _owner) public view virtual returns (uint256 _balance);
  function ownerOf(uint256 _tokenId) public view virtual returns (address _owner);
  function exists(uint256 _tokenId) public view virtual returns (bool _exists);

  function approve(address _to, uint256 _tokenId) public virtual;
  function getApproved(uint256 _tokenId) public view virtual returns (address _operator);

  function setApprovalForAll(address _operator, bool _approved) public virtual;
  function isApprovedForAll(address _owner, address _operator) public view virtual returns (bool);

  function transferFrom(address _from, address _to, uint256 _tokenId) public virtual;
  function safeTransferFrom(address _from, address _to, uint256 _tokenId) public virtual;
  function safeTransferFrom(
    address _from,
    address _to,
    uint256 _tokenId,
    bytes memory _data
  )
    public virtual;
}
