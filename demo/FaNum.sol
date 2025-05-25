// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FanNum{
    mapping (string => uint256) private   nameToNumber;  //定义一个key value的值，是私有的，然后在给个别名
    function crateOrUpdateFanNum(string memory name ,uint256 number) public {//memory关键字 string本质是动态的值，都要用memory
      nameToNumber[name] =number;
      
    }

    function getNumber(string memory name) public view returns(uint256){
        return  nameToNumber [name];
    }
}