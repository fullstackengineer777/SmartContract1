//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "hardhat/console.sol";

contract Token{

    string public name = "Test Token";
    string public symbol = "TT";
    uint public totalSupply = 1000000;
    mapping(address => uint) balances;

    constructor(){
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint){
        return balances[account];
    }
}