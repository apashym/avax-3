// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NewToken is ERC20 {
    address public tokenHolder;

    event TokenMove(address indexed consigner, address indexed giftee, uint256 items);

    modifier onlyHolder() {
        require(msg.sender == tokenHolder || address(this) == tokenHolder, "Only the owner can produce tokens.");
        _;
    }

    constructor(uint256 earlySupply) ERC20("Ball", "BL") {
        tokenHolder = msg.sender;
        _mint(tokenHolder, earlySupply);
    }

    function mint(address account, uint256 mintedItems) public onlyHolder {
        require(account != address(0), "Invalid address");
        _mint(account, mintedItems);
        emit TokenMove(address(0), account, mintedItems);
    }

    function burn(uint256 burnedItems) public {
        require(balanceOf(msg.sender) >= burnedItems, "Insufficient WHA funds");
        _burn(msg.sender, burnedItems);
        emit TokenMove(msg.sender, address(0), burnedItems);
    }

    function transfertk(address giftee, uint256 transferItems) public returns (bool) {
        require(giftee != address(0), "Invalid giftee");
        _transfer(msg.sender, giftee, transferItems);
        emit TokenMove(msg.sender, giftee, transferItems);
        return true;
    }
}
