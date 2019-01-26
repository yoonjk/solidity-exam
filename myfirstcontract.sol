pragma solidity ^0.4.24;

contract MyFirstContract {
    string private name;
    uint private age;
    
    function setName(string _name) public {
        name = _name;
    }
    
    function getName()  public view returns  (string) {
        return name;
    }

    function getAge() public view returns (uint) {
        return age;
    }
    
    function setAge(uint _age) public {
        age = _age;
    }
}
