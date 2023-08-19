// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract HelloWorld  {
    enum Status{
        Pending, //indexed 0
        Shipped, //indexed 1
        Delivered //indexed 2
    }
    Status public status;
    function setStatus(Status val) public{
        status = val;
    }
    function isDelivered() public view returns(bool){
        return status == Status.Delivered;
    }
    function reset() public {
        delete status;
    }
}