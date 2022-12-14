//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Migrations (
    address public owner;
    unit public last_completed_migration;

    constructor() public {
        owner = msg.sender; //address owner
    }

    modifier restricted() {
        if(msg.sender == owner) _;
    }

    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }
)