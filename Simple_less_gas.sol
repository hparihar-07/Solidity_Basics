// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Helloworld{
    address[] public addresses;
    mapping (address=>bool) addressesAdded;
    function addAddress() external {
        require(addressesAdded[msg.sender]==false,"address has already been added");
        addressesAdded[msg.sender] = true;
        addresses.push(msg.sender);
    }
}