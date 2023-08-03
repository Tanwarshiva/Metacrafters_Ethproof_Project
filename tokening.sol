// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract Tokening {
    // Variables
    string public tokenName = "SHIVA";
    string public tokenSymbol = "Hi";
    uint256 public totalSupply = 0;

    // Mapping
    mapping(address => uint256) public balances;

    // Mint Function
    function mint(address _to, uint256 _value) external {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn Function
    function burn(uint256 _value) external {
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }
}
