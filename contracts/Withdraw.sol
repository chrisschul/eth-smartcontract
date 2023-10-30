// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9; 

contract withdrawContract {

    constructor() payable {}
    
    mapping(address => uint) public balances;

    function withdraw(uint _withdrawalAmt) external {
        address payable user = payable(msg.sender);
        require(balances[user] >= _withdrawalAmt); 
        balances[user] -= _withdrawalAmt;
        (bool valid, ) = user.call{value: _withdrawalAmt}("");
        require(valid, "Transaction failed");
    }
}
