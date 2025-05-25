// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract TestBytes{
    bytes1 public  b1; //0x00 结果是个字节
    bytes2 public  b2 = "hh"; //0x00 结果是个字节 结果是转成字节，长度是固定的
    bytes6 public  b6 = "123456"; // 不能够超字节  


     bytes32 public  b32 ="hallen";

     function get_lan() public view returns (uint256){   // 这里你能用int 因为长度不能为负数
        return  b32.length;
     }

     function get_by_index()public view returns (bytes32){
        return b32[0];  //可以通过下标获取值
     }
}