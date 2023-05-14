pragma solidity ^0.5.0;

import "trc20/TRC20.sol";
import "trc20/TRC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple TRC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `TRC20` functions.
 */
contract SimpleToken is TRC20, TRC20Detailed {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public TRC20Detailed("YourTokenName", "YTN", 18) {
        _mint(msg.sender, 10000000000 * (10 ** uint256(decimals())));
    }
}
