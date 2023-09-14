// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

// Runtime Gas Optimization
// using assembly for simple setters.
// don't use assembly unless you know what you are doing
// it can lead to security vulnerabilities if you implement it wrongly.

contract test1 {
    address owner = 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984;

    function costly(address newOwner) public {
        owner = newOwner;
    }
}

contract test2 {
    address owner = 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984;

    function efficient(address newOwner) public {
        assembly {
            sstore(owner.slot, newOwner)
        }
    }
}
