// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Runtime Gas Optimization
// Use an unchecked block when operands can’t underflow/overflow.

contract test1 {
    uint256 i;
    uint256 j;
    uint256 k;

    function costly() external {
        if (j > i) {
            k = j - i;
        }
    }
}

contract test2 {
    uint256 i;
    uint256 j;
    uint256 k;

    function efficient() external {
        if (j > i) {
            // the if statement makes sure the below doesn't underflow.
            // so we can use unchecked to save gas.
            unchecked {
                k = j - i;
            }
        }
    }
}

contract test3 {
    uint256 i;
    uint256 j;
    uint256 k;

    function costly() external payable {
        for (uint p; p < 10; ++p) {
            // some operation
        }
    }
}

contract test4 {
    uint256 i;
    uint256 j;
    uint256 k;

    function efficient() external payable {
        for (uint p; p < 10; ) {
            // some operation
            unchecked {
                ++p;
            }
        }
    }
}
