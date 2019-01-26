pragma solidity ^0.4.24;

interface Validator {
    function checkValue(uint amount) external view returns (bool);
    function loan() external returns (bool);
}

contract Bank is Validator {
    uint private value = 10;
    address private owner;
    constructor(uint amount) public {
        value = amount;
        owner = msg.sender;
    }
    
    modifier owerFunc  {
        require(owner == msg.sender);
        _;
    }
    function deposit(uint amount) public {
        value += amount;
    }
    
    function withdraw(uint amount) owerFunc public {
        if (checkValue(amount))
            value -= amount;
    }
    
    function balance() public view returns (uint) {
        return value;
    }
    
    
    function checkValue(uint amount) public view returns (bool) {
        return amount <= value;
    }
    
    //abstract function
    //function load() public returns (bool);
        
    function loan() public view returns (bool) {
        return value > 0;
    }
}

contract MyFirstContract is Bank(20) {
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

contract MyErrorHandle {
    function testAssert() public {
        assert(1 == 2);
    }
    
    function testRequire() public {
        require(1 == 2);
    }
    
    function testRevert() public {
        revert();
    }
    
    function testThrow() public {
        throw;
    }
}
