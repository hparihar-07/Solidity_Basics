// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract nestMap{
    mapping(uint => mapping(uint => int))map;
    function addItem(uint key1, uint key2, int value) public {
        map[key1][key2] = value;
    }
    function getItem(uint key1, uint key2) public view returns(int){
        return map[key1][key2];
    }
}
