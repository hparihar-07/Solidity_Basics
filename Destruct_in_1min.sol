// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract HelloWorld{
    uint expiry;
    uint count;
    constructor(){
        expiry = block.timestamp + 1 minutes;
    }
    function addOne() public {
    require(block.timestamp < expiry);
    count++;
    }
}