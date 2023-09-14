// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Runtime Gas Optimization
// use !=0 instead of > 0 as validation for unsigned integers. This works as unsigned integers cannot take negative values.

contract test1 {
    uint256 i = 1;

    function costly(uint256 j) external {
        if (j > 0) {
            i = j;
        }
    }
}

contract test2 {
    uint256 i = 1;

    function efficient(uint256 j) external {
        if (j != 0) {
            i = j;
        }
    }
}
