// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract RoadRunner is ERC1155 {

    uint256 public constant COIN = 0;
    uint256 public constant WOOD = 1;
    uint256 public constant OIL = 2;
    uint256 public constant FOOD = 3;


    constructor() ERC1155("https://api.voodoo.com/api/item/{id}.json") {} 

    function sendCoin(address player,uint256 amount) external {
        _mint(player, COIN, amount, "");

    }

    function sendWood(address player) external {
        _mint(player, WOOD, 1, "");
    }

    function sendOil(address player) external {
        _mint(player, OIL, 1, ""); 
    }

    function sendFood(address player) external {
         _mint(player, FOOD, 1, "");
    }
}
