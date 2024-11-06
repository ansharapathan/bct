// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0; 




contract BankAccount {

    address public owner; // Owner of the bank account
    uint public balance;  // Holds the current balance of the account


    constructor() {
        owner = msg.sender; // msg.sender is the account deploying the contract
        balance = 0; // Start with zero balance
    }




    function deposit(uint amount) public  {
        require(msg.sender==owner,"Invalid User");
        require(amount > 0, "Deposit amount must be greater than zero"); // Check for positive deposit
        balance += amount; // Increase the balance by the amount sent
    }




    function withdraw(uint amount) public {
        require(msg.sender == owner, "Only the account owner can withdraw"); // Only owner can withdraw
        require(amount <= balance, "Insufficient balance"); // Check if balance is enough
        balance -= amount; // Deduct the amount from balance
        
    }

    

    function showBalance() public view returns (uint) {
        require(msg.sender==owner);
        return balance; // Returns the current balance of the account
    }
}
