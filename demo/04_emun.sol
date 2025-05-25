// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


//枚举类型
contract TestEnum{
    enum Gender{
        name,
        age
    }
    Gender default_s  = Gender.name;   
}