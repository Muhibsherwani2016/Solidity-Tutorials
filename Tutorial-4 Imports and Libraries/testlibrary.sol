pragma solidity >=0.4.0 <=0.5.2;

import "browser/library.sol";
// For remote import we use like this
import "https://github.com/Muhibsherwani2016/Solidity-Tutorials/tutorial-1.sol";

contract TestLibrary{
    using IntExtended for uint;
    
    function testIncrement(uint _base) public pure returns (uint){
        return IntExtended.increament(_base);
    }
    
    function testDecrement(uint _base) public pure returns (uint){
        return IntExtended.decrement(_base);
    }
    
    function testIncrementByValue(uint _base, uint _value) public pure returns (uint){
        return _base.increamentByValue(_value);
    }
    
    function testDecrementByValue(uint _base, uint _value) public pure returns (uint){
        return _base.decrementByValue(_value);
    }
}
