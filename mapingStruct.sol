// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract structMapping{
    struct student{
        string name;
        uint roll;
        bool pass;
    }

    mapping(uint =>student) public data;
    
    function insert(uint index, string memory _name,uint _roll,bool _pass)public {
        data[index] = student(_name,_roll,_pass);
    }

    function returnValue(uint index) public view returns(student memory){
        return data[index];
    }
}