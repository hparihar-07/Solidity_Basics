// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;
contract BytesArray{
    //Byte array stores data in hexadecimal form
    bytes2 public bytes2array;
    bytes4 public bytes4array;
    bytes public dynamicArray;
    constructor(){
        bytes2array="ab";
        bytes4array="abcd";
        dynamicArray.push("a");
    }
    function append() public {
        dynamicArray.push("b");
    }
    function pop() public  {
        dynamicArray.pop();
    }
    function length() public view returns(uint){
        return dynamicArray.length;
    }
}