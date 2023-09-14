// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

// Run time gas optimization
// Make 3 event parameters indexed when possible

contract test1 {
    event updated(uint indexed i, uint indexed j, uint k);

    function costly() external payable {
        emit updated(1, 2, 3);
    }
}

contract test2 {
    event updated(uint indexed i, uint indexed j, uint indexed k);

    function efficient() external payable {
        emit updated(1, 2, 3);
    }
}
