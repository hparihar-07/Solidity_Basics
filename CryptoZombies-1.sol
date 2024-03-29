// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.6.0;
contract ZombieFactory{
    event NewZombie(uint zombieId, string name, uint dna);
    uint dnaDigits = 16;
    uint dnaModulus = 10**dnaDigits;
    struct Zombie{
        string name;
        uint dna;
    }
    Zombie[] public zombies;
    function createZombie(string memory _name, uint _dna) private  {
       uint id = zombies.push(Zombie(_name, _dna)) - 1;
       emit NewZombie(id, _name, _dna);
    }
    function _generateRandonDna(string memory _str) private view returns (uint){
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }
    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandonDna(_name);
        createZombie(_name, randDna);
    }
}