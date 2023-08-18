// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract HelloWorld{
    uint public x;
    uint public y;
    uint public z;
    modifier costs(uint value){
        require(msg.value >= value);
        _;
    }
    function setX(uint num)public payable costs(1 ether){
        x = num;
    }
    function setY(uint num)public payable costs(2 ether){
        y = num;
    }
    function setZ(uint num)public payable costs(3 ether){
        z = num;
    }
}