// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract depositContract {
    constructor() payable {}
    function deposit(address _userAddress, address _depositAddress, uint _amountToDeposit) external {
        require(
            _userAddress != address(0) && _amountToDeposit > 0
        );

        (bool valid, ) = payable(_depositAddress).call{value: _amountToDeposit}("");
        require(valid, "Transaction failed.");
    }
}
