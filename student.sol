// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    struct Student {
        uint id;
        string name;
        uint grade;
    }
    
    Student[] public students;


    function addStudent(uint _id, string memory _name, uint _grade) public {
        students.push(Student(_id, _name, _grade));
    }

    function getStudent(uint index) public view returns (uint, string memory, uint) {
        require(index < students.length, "Student does not exist");
        return (students[index].id, students[index].name, students[index].grade);
    }

    // Fallback function to handle any non-existent function calls
    fallback() external payable {
        // Handle any incoming Ether or unknown function calls
        revert();
    }

    
}
