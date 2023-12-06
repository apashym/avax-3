# Ball Token (BL)

A Solidity ERC20 token contract for Ball Token (BL).

## Overview

This contract implements an ERC20 token called Ball (BL). It provides functionalities for minting, burning, and transferring tokens.

Absolutely, here's a brief overview of the functions in your Solidity contract:

## Functions 

### `constructor(uint256 earlySupply)`

- **Description:** Initializes the contract upon deployment, setting the initial supply of the Ball (BL) token to the address that deploys the contract.

### `mint(address account, uint256 mintedItems)`

- **Description:** Creates new Ball tokens and adds them to the specified account's balance.
- **Modifiers:** `onlyHolder` - Only the token holder (contract deployer) can execute this function.

### `burn(uint256 burnedItems)`

- **Description:** Removes Ball tokens from the sender's (caller's) balance by burning them.
- **Requirements:** Sender must have sufficient tokens to burn (`burnedItems`) from their balance.

### `transfertk(address giftee, uint256 transferItems)`

- **Description:** Transfers Ball tokens from the sender's address to the specified recipient (`giftee`).
- **Requirements:** Sender must have enough tokens (`transferItems`) to complete the transfer.

Each function serves a distinct purpose, enabling token creation, burning, and transfer among addresses while incorporating necessary checks for valid execution

## Author

Shashiprethamm

apashyamkirikiri4321@gmail.com
