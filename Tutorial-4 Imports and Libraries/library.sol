pragma solidity >=0.4.0 <=0.5.2;

library IntExtended{
    
    function increament(uint _self) public pure returns (uint){
        return _self+1;
    }
    
    function decrement(uint _self) public pure returns (uint){
        return _self-1;
    }
    
    function increamentByValue(uint _self, uint _value) public pure returns (uint){
        return _self + _value;
    }
    
    function decrementByValue(uint _self, uint _value) public pure returns (uint){
        return _self - _value;
    }
}
