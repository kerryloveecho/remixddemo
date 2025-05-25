// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

contract Two{
    int8 a = 10; 
    int16 b =20;

    function add() public view returns (int8){
         return a + int8(b) ;
    }
}