// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Runtime Gas Optimization
// i = i + j or i = i - j costs less gas than i += j or i -= j for state variables. Note:- Doesnot work for struct and mappings.

contract test1 {
    uint i = 1;

    function costly(uint j) external {
        i += j;
    }
}

contract test2 {
    uint i = 1;

    function efficient(uint j) external {
        i = i + j;
    }
}
