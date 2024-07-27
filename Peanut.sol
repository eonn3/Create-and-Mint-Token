// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Peanut is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Peanut", "PEA")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferPeanuts(address to, uint256 amount) public {
        address owner = _msgSender();
        _transfer(owner, to, amount);
    }

    function burn(uint256 amount) public {
        address owner = _msgSender();
        _burn(owner, amount);
    }
}
