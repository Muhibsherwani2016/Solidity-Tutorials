pragma solidity >=0.4.0 <=0.5.2;

contract DataTypes{
    
    // DataTypes
    
    bool mybool = false;
    
    int8 myInt = 124;
    uint8 myUint = 255;
    
    string myString;
    
    byte myByte;
    bytes1 myBytes1;
    bytes32 myBytes32;
    
    // Enum
    
    enum Action {ADD, REMOVE, UPDATE}
    
    Action myAction = Action.ADD;
    
    address payable myAddress;
    
    function assignAddress() public {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }
    
    // Arrays
    
    uint[] myArr = [1,2,3];
    
    function arrFunc() public{
        myArr.push(10);
        myArr.length;
        myArr[0];
    }
    
    uint[10] myFixedArr;
    
    // Struct
    
    struct Account{
        uint balance;
        uint dailyLimit;
    }
    
    Account myAccount;
    
    function structFunc() public{
        myAccount.balance = 100;
    }
    
    // Mapping
    
    mapping (address => Account) _accounts;
    
    function () external payable {
        _accounts[msg.sender].balance += msg.value;
    }
    
    function getBalance() public view returns (uint) {
        return _accounts[msg.sender].balance;
    }
    
}
