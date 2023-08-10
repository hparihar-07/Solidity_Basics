// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Helloworld{
    address[] public addresses;
    function addAddress() external {
        for(uint idx; idx<addresses.length;idx++){
            address currentAddress = addresses[idx];
            if(currentAddress == msg.sender){
                revert("Sender is already in addresses");
            }
        }
        addresses.push(msg.sender);
    }
}