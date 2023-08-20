// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <  0.9.0;
contract Storage{
    uint public x;
    function setX(uint newX) public {
        x = newX;
    }
}
contract caller{
    Storage store1;
    Storage store2;
    constructor(){
        store1 = new Storage();
        store2 = new Storage();
    }
    function setX(uint x)public {
        store1.setX(x);
    }
    function getX() public view returns(uint){
        return store1.x();
    }
}