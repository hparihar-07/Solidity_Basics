// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract loop{
    function test(uint max) public pure returns(uint){
        uint sum = 0;
        for(uint i=0;i<max;i++){
            sum += i;
        }
        return sum;
    }
}