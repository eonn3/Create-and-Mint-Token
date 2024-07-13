// SPDX-License-Identifier: MIT 
// Compatible with OpenZeppelin Contracts ^5.0.0 3 
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; 
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol"; 
import "@openzeppelin/contracts/access/ownable.sol";

contract Peanut is ERC20,ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("Peanut", "PEA")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amount) public OnlyOwner {
        _mint(to, amount);
    }
}