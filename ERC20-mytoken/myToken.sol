pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC20/ERC20.sol";

contract myToken is ERC20 {
    
    string public token_name = "cmldkToken";
    string public token_symbol = "CDT";
    uint public INITIAL_SUPPLY = 1000;
    
    constructor () public ERC20(token_name, token_symbol) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}