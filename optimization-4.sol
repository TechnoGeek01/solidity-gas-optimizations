// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Runtime Gas Optimization
// Instead of using if(x==true) or if(x==false) use if(x) or if(!x).

contract test1 {
    bool i;
    uint j;

    function costly() external {
        bool k;
        if (k == false) {
            j = 10;
        }
    }
}

contract test2 {
    bool i;
    uint j;

    function efficient() external {
        bool k;
        if (!k) {
            j = 10;
        }
    }
}
