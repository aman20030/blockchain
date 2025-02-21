pragma solidity ^0.8.0;

contract SimpleLottery {
    address[] public players;
    address public winner;

    function enter() public payable {
        require(msg.value > 0, "Must send Ether to enter");
        players.push(msg.sender);
    }

    function selectWinner() public {
        require(players.length > 0, "No players in the lottery");
        uint256 randomIndex = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, players.length))) % players.length;
        winner = players[randomIndex];
        payable(winner).transfer(address(this).balance);
        delete players;
    }
}
