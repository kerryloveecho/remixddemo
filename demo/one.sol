// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataType{
    bool public ok = true; // 声明一个变量 ，用public 变为全局
    bool public ok1;  // 默认值为fasle
    // if判断
     function test() public view returns(string memory) {
        if(ok) {
            return unicode"这是true";
        } else {
            return "false";
        }
    }
}