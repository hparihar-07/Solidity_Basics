// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0<0.9.0;
contract DataTypes{
 /**   There are mainly four datatypes
    •1 uint -> unsigned integer(only positive values)
     uint_types     storing_capacity    range:
     uint256        32bytes             0-(2^n - 1)
     uint128        16bytes
     uint64         8bytes
     uint32         4bytes
     uint16         2bytes
     uint8          1bytes
    Declaring a variable **/
    uint myVar1 = 12;//By default uint will be uint256

    
  /**  •2 int -> integer(positive and negative  values)
     int_types     storing_capacity     range
     int256        32bytes              [{-2^(n-1)}-{2^(n-1) - 1}]
     int128        16bytes
     int64         8bytes
     int32         4bytes
     int16         2bytes 
     int8          1bytes **/
    //Declaring a variable
    int myVar2 = -12;//By default uint will be int256
    
     
     // 3 bool-> boolean(either true or false value)
     // By default it is always false
     bool myValue;


     /** •4 address (use to store ethereum address)
         Default value will be like 0x0000000000....
        it posses 160bits i.e 20bytes **/


     // TypeCasting in Solidity
     int y = 9;
     uint x = 21;
     function op() public{
         x = x + uint(y);
     }

}