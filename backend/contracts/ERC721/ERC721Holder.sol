// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "./ERC721Receiver.sol";


contract ERC721Holder is ERC721Receiver {
  function onERC721Received(address, uint256, bytes memory) public override pure returns(bytes4) {
    return ERC721_RECEIVED;
  }
}
