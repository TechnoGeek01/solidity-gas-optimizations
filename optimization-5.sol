// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Runtime Gas Optimization
// ++i or --i costs less gas than i++ or i--

contract test1 {
    uint256 public i;

    function costly() external {
        i++;
    }
}

contract test2 {
    uint256 public i;

    function efficient() external {
        ++i;
    }
}
