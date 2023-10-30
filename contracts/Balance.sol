// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract userBalance {
    
    mapping (address => uint) public balances; 

    function getBalance() external view returns (uint) {
        address user = msg.sender; 
        return balances[user];
    }
}

