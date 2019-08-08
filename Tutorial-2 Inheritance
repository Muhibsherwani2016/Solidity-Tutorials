pragma solidity >=0.4.0 <=0.5.2;

interface Regulater{
    function checkValue(uint amount) external returns (bool);
    function loan() external returns (bool);
} 

contract Bank is Regulater {
    uint private value;
    
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

contract MyFirstContract is Bank() {
    string private name;
    uint private age;
    
    function setName(string memory newName) public {
        name = newName;
    }
    
    function getName() public view returns (string memory) {
        return name;
    }
    
    function setAge(uint newAge) public {
        age = newAge;
    }
    
    function getAge() public view returns (uint) {
        return age;
    }
}
