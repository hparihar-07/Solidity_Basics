// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Helloworld{
    uint public lastTime;
    uint count;
    constructor() {
        lastTime = block.timestamp;
    }
    function increment() public {
        count++;
        lastTime = block.timestamp;
    }
    function getMinutesSinceLastCall() public view returns(uint){
        return (block.timestamp - lastTime) / 1 minutes;
    }
}