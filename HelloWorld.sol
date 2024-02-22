// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

  // State variable to store a message
    string private message;

    // Event declaration for logging message changes
    event MessageChanged(string oldMessage, string newMessage);

    // Constructor to initialize the default message
    constructor() {
        message = "Hello, World!";
    }

    // Function to say Hello
    function sayHello() public view returns (string memory) {
        return message;
    }

    // Function to change the message
    function changeMessage(string memory newMessage) public {
        require(bytes(newMessage).length > 0, "Message cannot be empty");
        emit MessageChanged(message, newMessage);
        message = newMessage;
    }

    // Function to reset the message to "Hello, World!"
    function resetMessage() public {
        emit MessageChanged(message, "Hello, World!");
        message = "Hello, World!";
    }
}
