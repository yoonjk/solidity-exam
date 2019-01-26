pragma solidity ^0.4.24;

import "browser/library.sol";

contract TestLibrary  {
    using IntExtended for uint;
    
    function testIncrement(uint _base) public pure returns (uint) {
        return _base.increment();
    }
    
    function testDecrement(uint _base) public pure returns (uint) {
        return _base.decrement();
    }  
    
    function testIncrementByValue(uint _base, uint value) public pure returns (uint) {
        return _base.incrementByValue(value);
    }      
   
    function testDecrementByValue(uint _base, uint value) public pure returns (uint) {
        return _base.decrementByValue(value);
    }          
}
