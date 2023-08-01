// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract Basic{
    bool canEdit = true;
    bool admin = false;
    function canEditDoc() public view returns (bool){
        if (canEdit){
            return true;
        }
        else if(admin){
            return true;
        }
        else{
            return false;
        }
    }
    //Ternary operator
    function canEditDoc1() public view returns (bool){
        return canEdit|| admin?true:false;
    }
    // Double ternary operator
    function canEditDoc2() public view returns (uint){
        return canEdit||admin?(true?1:0):0;
    }
}