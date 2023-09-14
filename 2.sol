// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

// Runtime Gas Optimization
// Instead of multiplication or division by powers of 2 use bit shift left or bit shift right operators. Egs:- Shift left by 5 instead of multiplying by 32. Just make sure there is no possibility of overflow/underflow as bit shifting operators are not protected for overflow/underflow even if we use above 0.8.0 solidity version. bit shifting operators are not arithmetic operators so it is not protected for overflow/underflow.

contract test1 {
    uint public i = 1;

    function costly(uint j) external {
        i = j * 32; // 2^5
    }
}

contract test2 {
    uint public i = 1;

    function efficient(uint j) external {
        i = j << 5;
    }
}
