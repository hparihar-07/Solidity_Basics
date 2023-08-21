// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
contract Storage{
    uint x;
    function setX(uint newX) public {
        x = newX;
    }
    function getX() public virtual view returns(uint){
        return  x;
    }
}
contract Child is Storage{
    function getX() public override view  returns(uint){
        return x + super.getX();
    }
}