pragma solidity ^0.8.3; 
import"https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol"; 
contract MyContract{ 
//1st Method of calling solidity library function 
using SafeMath for uint256; 
function addition(uint256 a, uint256 b) public payable returns (bool,uint256) { 
return a.tryAdd(b);
}
 //2nd Method of calling solidity library function 
function multiply(uint256 a, uint256 b) public payable returns (bool,uint256) { 
return SafeMath.tryMul(a,b);
} 
}