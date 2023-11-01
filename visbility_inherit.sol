// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract visibility{
    function f1() public pure returns(uint)
    {
        return 1;
    }
    
    //private
    function f2() private pure returns(uint)
    {
        return 1;
       
    }
    //internal
    function f3() internal  pure returns(uint)
    {
      return 3;
    }
    //external
    function f4() external pure returns(uint)
    {
        return 4;
    }
}

//derived
contract Derive {
   visibility  objvis = new visibility();
    uint public xc = objvis.f4();
}

contract B is Derive{
   // uint public bxs= f2(); 
}



