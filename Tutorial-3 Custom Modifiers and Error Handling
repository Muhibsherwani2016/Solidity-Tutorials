pragma solidity >=0.4.0 <=0.5.2;

contract Regulater{
    function checkValue(uint amount) external returns (bool);
    function loan() external returns (bool);
}

contract Bank is Regulater {
    uint private value;
    address private owner;
    
    modifier ownerFunc {
        require(owner == msg.sender);
        _;
    }
    
    constructor(uint amount) public{
        value = amount;
        owner = msg.sender;
    }
    
    function deposit(uint amount) public{
        value += amount;
    }
    
    function withdraw(uint amount) public{
        value -= amount;
    }
    
    function balance() public view returns (uint) {
        return value;
    }
    
    function checkValue(uint amount) public returns (bool){
        return value >= amount;
    }
    
    function loan() public returns (bool){
        return value > 0;
    }
}

contract TestThrows {
    function testAssert() public pure{
        assert(1 == 2);
    }
    
    function testRequire() public pure{
        require(2 == 1);
    }
    
    function testRevert() public pure{
        revert();
    }

}
