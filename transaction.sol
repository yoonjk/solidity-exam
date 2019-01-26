pragma solidity ^0.4.24;

contract Transaction {
    address private owner;
    
    event sendLogger(address);
    event valueLogger(uint);
    
    constructor() public {
        owner = msg.sender;
    }
    
    modifier validValue {
        require(msg.value >= 1 ether);
        _;
    }
    
    modifier isOwner {
        require(owner == msg.sender);
        _;
    }
    
    function () isOwner validValue payable public {
        sendLogger(msg.sender);
        valueLogger(msg.value);
    }
}
