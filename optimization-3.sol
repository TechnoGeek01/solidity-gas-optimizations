// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Runtime Gas Optimization
// Whenever possible, instead of (> or <) use (>= or =<). Example: instead of if(x>10) use if(x>=11)

contract test1 {
    uint256 i;

    function costly(uint256 _i) external {
        if (_i > 9) {
            i = _i;
        }
    }
}

contract test2 {
    uint256 i;

    function efficient(uint256 _i) external {
        if (_i >= 10) {
            i = _i;
        }
    }
}
