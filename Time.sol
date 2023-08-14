// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Helloworld{
    function getTime() public view returns(uint){
        return block.timestamp-7 days;
        //This will give current block time in Unix Epac time
    }
}