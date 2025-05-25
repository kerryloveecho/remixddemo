// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TipJar{
    address public owner;  //合约的拥有者
    // 初始化调用，并且值调用一次
    constructor(){
      owner = msg.sender;  // 谁发起部署，owner存入进去
    }
modifier  onlyOwner(){
    require(msg.sender == owner ,"You are not owner");
    _;
}

    // payable 代表这个函数可以收款
    function tip() public payable { 
          require(msg.value >0,"you should send a tip to use this function"); //要求转账金额大于0
    }

   
    function withdraw() public  onlyOwner {
     uint256 contractBanlance =  address(this).balance; // 拿到合约的余额存入到临时变量里面
      require(contractBanlance >0 ,"There are no tips to withdraw");
      payable(owner).transfer(contractBanlance);
    }

    function getBalance() public view returns(uint256){
        return address(this).balance;
    }
}