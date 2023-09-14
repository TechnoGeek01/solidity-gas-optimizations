// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// Runtime Gas Optimization
// Use calldata instead of memory for function arguments that do not get mutated.

contract test1 {
    uint[1] i;

    function costly(uint[1] calldata _i) external {
        i[0] = _i[0];
    }
}

contract test2 {
    uint[1] i;

    function efficient(uint[1] memory _i) external {
        i[0] = _i[0];
    }
}
