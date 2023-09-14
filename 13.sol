// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Deployment gas optimization
// Do not pre-declare variable with default values. Don't explicitly initialize default variables. Egs: don't do uint x=0.

contract costly {
    uint i = 0;
    bool j = false;
    address k = address(0);
}

contract efficient {
    uint i;
    bool j;
    address k;
}
