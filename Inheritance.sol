// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}
// Contracts inherit other contracts by using the keyword 'is'.
contract B is A {
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}
contract C is A {
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}