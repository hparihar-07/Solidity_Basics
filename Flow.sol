// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Helloworld{
    function testMath(uint8 x, uint8 y)public pure returns(uint8){
        //Asserting the case first to remove underflow
        assert(y<=x);
        return x-y;
    }
}