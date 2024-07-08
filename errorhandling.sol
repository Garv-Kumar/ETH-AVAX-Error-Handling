// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Errorhandling {
    function checkInput(uint _input) public pure returns(string memory){
        require(_input >= 0, "invalid uint8");
        require(_input <= 255, "invalid uint8");
         
        return "Input is Uint8";
    }

    function Odd(uint _input) public pure returns(bool){
        require(_input % 2 != 0);
        return true;
    }

    bool result;
 
    function checkOverflow(uint _num1, uint _num2) public {
        uint sum = _num1 + _num2;
        assert(sum<=255);
        result = true;
    }

    function getResult() public view returns(string memory){
         if(result == true){
             return "No Overflow";
         }
         else{
             return "Underflow exist";
         }
    }

    function checkOverflow_revert(uint _num1, uint _num2) public pure returns(string memory, uint){
        uint sum = _num1 + _num2;
         if(sum < 0 || sum > 255){
             revert(" Overflow Exist");
         }
         else{
             return ("No Overflow", sum);
         }
          
    }
     
}
