pragma solidity >=0.4.0 <=0.5.2;

contract Transaction{
    
    event SenderLogger(address);
    event ValueLogger(uint);
        
    address private owner;
    
    modifier isOwner{
        require(owner == msg.sender);
        _;
    }
    
    modifier validValue{
        require(msg.value >= 1 ether);
        _;
    }
    
    constructor() public{
        owner = msg.sender;
    }
    
    function () external payable isOwner validValue{
        emit SenderLogger(msg.sender);
        emit ValueLogger(msg.value);
    }
}
