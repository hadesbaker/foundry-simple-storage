// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title A Decentralized Storage Application
 * @author Taki Baker Alyasri
 * @notice This contract is for storing and retrieving a favorite number
 * @dev This contract is deployed via the DeploySimpleStorage.s.sol script
 */

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
