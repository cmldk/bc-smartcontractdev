pragma solidity ^0.6.0;

import "../github/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract CDToken is ERC20 {
    string public token_name = "CDToken";
    string public token_symbol = "CDT";
    uint256 public INITIAL_SUPPLY = 1000000;

    constructor() public ERC20(token_name, token_symbol) {
        _mint(msg.sender, INITIAL_SUPPLY * 10**uint256(decimals()));
    }
}
