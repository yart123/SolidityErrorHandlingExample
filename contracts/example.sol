// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.13;

contract FavoriteOddNumber {

    mapping(address => uint) private favorite_odd_number;

    event FavoriteOddNumberSet(address indexed user, uint number);

    function set_favorite_odd_number(uint number) public payable {
        require(number % 2 == 1, "Number has to be odd!");

        if (favorite_odd_number[msg.sender] != 0) {
            // Reverting if number is already set
            revert();
        }
        favorite_odd_number[msg.sender] = number;

        assert(favorite_odd_number[msg.sender] == number);

        emit FavoriteOddNumberSet(msg.sender, number);
    }
}