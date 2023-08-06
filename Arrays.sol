// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Arrays{
    //fixed size array
    uint[5] public nums = [1,2,3,4];
    //Dynamic array
    uint[] public numbers = [1,3,5];
    function add(uint x) public{
        numbers.push(x);
    }
    function pop() public {
        numbers.pop();
    }
    function length() public view returns (uint){
        return numbers.length;
    }
    function remove(uint idx) public {
        delete numbers[idx];
    }
}