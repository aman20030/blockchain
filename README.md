# blockchain

SimpleLottery Smart Contract

Overview

SimpleLottery is a smart contract written in Solidity that allows users to enter a lottery by sending Ether. A random winner is selected from the participants, and the contract transfers the collected funds to the winner.

Features

Users can enter the lottery by sending Ether.

The contract randomly selects a winner.

The winner receives the entire balance of the contract.

Designed to run on the Edu Chain network.

Deployed Address

The contract is deployed on the Edu Chain network at the following address:
0xAF9A9867EE59eF0B9E285f5C441F334Dfa619c48

Contract Functions

enter()

Allows users to participate in the lottery by sending Ether.

Adds the sender's address to the players array.

Requires that the user sends a nonzero amount of Ether.

selectWinner()

Selects a random winner from the players array.

Uses a pseudo-random hash function based on block properties.

Transfers the contract's balance to the selected winner.

Resets the players' list after selecting a winner.

How to Use

Deploy the contract on an Ethereum-compatible blockchain (Edu Chain).

Participants call enter() with Ether to join the lottery.

Call selectWinner() to randomly choose and reward a winner.

Security Considerations

The random selection method is not fully secure for high-stakes lotteries.

Consider using Chainlink VRF for improved randomness.

Ensure the contract is deployed by a trusted party to prevent malicious modifications.

License

This contract is open-source and available for modification and distribution.


