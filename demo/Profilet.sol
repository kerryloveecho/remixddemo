// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract ProfileStaus{
    struct Status{
        string name;   // 定义一个结构体姓名和签名
        string message;
    }
    mapping (address=>Status) private  userStatus;  //通过mapping 关联地址和status 用户信息
   
   // 实现 userstatus 的创建和更新
    function createOrUpdateStatus(string memory _name , string memory _message) public{
        userStatus[msg.sender].name = _name;
        userStatus[msg.sender].message = _message;

    }
    // 用于读取status
    function getStatus() public view returns (string memory ,string memory){
         return(userStatus[msg.sender].name,userStatus[msg.sender].message);
    }

}