pragma solidity ^0.5.0;

contract complex1 {
    //Struct to store a user's data
    struct User {
        uint id;
        string name;
        string email;
        uint age;
    }
    
    //Mapping to store user data
    mapping (uint => User) public users;
    
    //Counter to track the number of users
    uint public userCount;
    
    //Function to add a new user
    function addUser(string memory _name, string memory _email, uint _age) public {
        userCount++;
        users[userCount] = User(userCount, _name, _email, _age);
    }
    
    //Function to update a user's data
    function updateUser(uint _id, string memory _name, string memory _email, uint _age) public {
        //Check if user exists
        require(users[_id].id == _id, "User does not exist");
        
        //Update user data
        users[_id].name = _name;
        users[_id].email = _email;
        users[_id].age = _age;
    }
    
    //Function to get a user's data
    function getUser(uint _id) public view returns (uint, string memory, string memory, uint) {
        //Check if user exists
        require(users[_id].id == _id, "User does not exist");
        
        //Return user data
        return (users[_id].id, users[_id].name, users[_id].email, users[_id].age);
    }
    
    //Function to delete a user
    function deleteUser(uint _id) public {
        //Check if user exists
        require(users[_id].id == _id, "User does not exist");
        
        //Delete user
        delete users[_id];
    }
    
    //Function to get the total number of users
    function getUserCount() public view returns (uint) {
        return userCount;
    }
    
    //Function to get all users
    function getAllUsers() public view returns (uint[], string[], string[], uint[]) {
        //Create arrays with the same length as the number of users
        uint[] memory ids = new uint[](userCount);
        string[] memory names = new string[](userCount);
        string[] memory emails = new string[](userCount);
        uint[] memory ages = new uint[](userCount);

        //Loop through all users and store the data in the arrays
        for (uint i = 1; i <= userCount; i++) {
            ids[i-1] = users[i].id;
            names[i-1] = users[i].name;
            emails[i-1] = users[i].email;
            ages[i-1] = users[i].age;
        }

        //Return all arrays
        return (ids, names, emails, ages);
    }
}