// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Hello_world {
    string public message;
    string public greetingPrefix = "Hello wold";
    
    constructor(string memory _message){
        message = _message;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    function viewMessage() public view returns(string memory){
        return string(abi.encodePacked(greetingPrefix, message));
    }
}