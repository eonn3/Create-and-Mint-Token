# Create-and-Mint-Token

This is a project revolving around an ERC20 token called Peanut (PEA). Its main functions are ``mint(to, amount)``, ``burn(amount)``, and ``trasfer(to, amount)``.

## Description

``Peanut.sol`` has a contract called ``Peanut`` revolving around a token of the same name, abbreviated as PEA. It inherits function from OpenZeppelin"s ERC20 token contracts, namely ERC20, ERC20Burnable, and Ownable.

## Features

### Deploying the Contract

To deploy the contract, an address must be provided to indicate which account is the owner of the contract.

### Mint

For this project, only the owner can mint tokens. The ```mint(to, amount)``` function takes an address and an amount as the parameter. Upon a successful transaction, the given amount of token is minted and added to the address of provided.

### Burn

The ```burn(amount)``` function takes an amount to burn. It will be burned from the address of the current account.

### Transfer

The ```transfer(to, amount)``` function takes an address and an amount as its parameters. The amount will be taken from the address of the current account and transferred to the address passed to the function.

## Author

Eonn Domingo


## License

This project is licensed under the MIT License - see the LICENSE file for details.
