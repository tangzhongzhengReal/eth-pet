pragma solidity ^0.4.17;

contract Adopt {
    address[16] public adopters;

    function adopt(uint8 id) public returns(uint8){
        require(id >= 0 && id <= 15);

        adopters[id] = msg.sender;

        return id;
    }

    function getAdopters() public view returns (address[16]) {
        return adopters;
    }   
}