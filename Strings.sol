// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Helloworld{
    string public x = "Hello World";
    /* We don't have any string methods in sol 
    so we use bytes to store strings which are basically UTF-8 version
    */
    bytes public y = "Hello World";
    function testString() public {
        y[0] = "1";
        y.push("1");
        y.pop();
        delete y[1];
    }
    function checkString() public view returns (string memory ){
        return string(y);
    }
}

