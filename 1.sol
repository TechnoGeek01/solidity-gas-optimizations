// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

// Runtime and deployment time gas cost optimization
// ternary operation is cheaper than if-else statement. But in some latest solidity versions this is optimized by default.
// if you are using version 0.8.13 or more solidity compiler, the compiler does this optimization automatically for us.
// but deployment cost is less in case of ternary operator irrespective of the compiler version for now. In future versions it might be optimized.

contract test1 {
    uint i = 1;

    function costly(uint _i) external {
        if (_i == 1) {
            i = _i;
        } else {
            i = 10;
        }
    }
}

contract test2 {
    uint i = 1;

    function efficient(uint _i) external {
        i = _i == 1 ? _i : 10;
    }
}
