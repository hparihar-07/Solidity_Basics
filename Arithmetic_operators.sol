// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Helloworld{
    function add(uint8 x, uint8 y) public pure returns(uint8){
        return x+y;
    }
    function sub(uint8 x, uint8 y) public pure returns(uint8){
        return x-y;
    }
    function mul(uint8 x, uint8 y) public pure returns(uint8){
        return x*y;
    }
    function div(uint8 x, uint8 y) public pure returns(uint8){
        return x/y;
    }
    function mod(uint8 x, uint8 y) public pure returns (uint8){
        return x%y;
    }
}