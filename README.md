# equito-evm-contracts-v1

This repository contains vault and minter contracts to bridge tokens across blockchain networks.

## Vault

The vault smart contract is ERC20Vault.sol

## Minter

The Minter smart contract is ERC20Minter.sol

For every Wrapped asset there is a separate smart contract deployd
- AlgoMinter
- AlgoUsdcMinter

For Ethereum blockchain we have:
- BnbMinter
- BnbUsdcMinter

For Binance blockchain we have:
- EthMinter
- EthUsdcMinter
## Audit

Both smart contract are audited by Certik.

[Certik Audit available here](./audit/REP-final-20221216T155626Z.pdf)