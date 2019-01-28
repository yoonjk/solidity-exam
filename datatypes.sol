pragma solidity ^0.4.24;

contract DataTypes {
    bool myBool = true;
    int8 myInt = -127;
    uint8 myUint = 255;
    string myString = "test";
    uint8[] myStringArr;
    uint[] myIntArr = [1,2,3];
    
    byte myValue ;
    bytes1 myBytes1 ;
    bytes32 myBtes32;
    
    enum Actions {ADD, UPDATE, REMOVE}
    
    Actions myAction = Actions.ADD;
    
    address myAddress;
    
    struct Account {
        uint balance;
        uint dailyLimit;
    }
    
    Account myAccount;
    
    mapping(address => Account) _accounts;
    
    function putIntArr(uint _value) public {
        myIntArr.push(_value);
    }
    
    function getIntArr() public view returns (uint[]) {
        return myIntArr;
    }
    
    function () payable public{
        _accounts[msg.sender].balance += msg.value;
    }
}
