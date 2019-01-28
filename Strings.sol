pragma solidity ^0.4.24;

library Strings {
    function concat(string _base, string _value) internal pure returns (string) {
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);
        
        string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _newValue = bytes(_tmpValue);
        
        uint i;
        uint j;
        
        for(i = 0; i < _baseBytes.length; i++) 
            _newValue[j++] = _baseBytes[i];
        
        for(i = 0; i < _valueBytes.length; i++)
            _newValue[j++] = _valueBytes[i];
            
        return string(_newValue);
    }
    
    function strPos(string _base, string _value) internal pure returns (int) {
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);
        
        assert(_valueBytes.length == 1);
        
        for(uint i = 0; i < _baseBytes.length; i++) {
            if (_baseBytes[i] == _valueBytes[0]) 
                return int(i);
        }
        
        return -1;
    }
}

contract TestStrings {
    using Strings for string;
    
    function testConcat(string _base) pure public returns (string) {
        return _base.concat("_sufix");
    }
    
    function needleHayStack(string _base) pure public returns (int) {
        return _base.strPos("t");
    }
}
