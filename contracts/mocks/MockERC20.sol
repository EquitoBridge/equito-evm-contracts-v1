// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
ERC20 mock token for token testing
 */
contract MockERC20 is ERC20 {
    uint8 private _decimals;

    uint256 private constant TOTAL_SUPPLY = 10 ** 11;
    uint256 private constant FAUCET_LIMIT = 10 ** 4;

    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals_
    ) ERC20(name, symbol) {
        _decimals = decimals_;
        _mint(msg.sender, TOTAL_SUPPLY * 10 ** decimals_);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    function faucet(uint256 amount) external {
        require(amount <= this.faucetLimit(), "Invalid faucet amount");
        _mint(msg.sender, amount);
    }

    function faucetLimit() external view returns (uint256) {
        return FAUCET_LIMIT * 10 ** _decimals;
    }
}
