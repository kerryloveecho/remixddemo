// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract TestBytes{
    bytes1 public  b1; //0x00 结果是个字节
    bytes2 public  b2 = "hh"; //0x00 结果是个字节 结果是转成字节，长度是固定的
    bytes6 public  b6 = "123456"; // 不能够超字节  


}