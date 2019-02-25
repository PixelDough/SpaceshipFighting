///@arg playerNum

var _playerNum = argument0;

global.playerData[_playerNum, PLAYER_DATA.INPUT_SOURCE] = noone;
input.playerInputDevice[_playerNum] = noone;
global.playerCount--;

