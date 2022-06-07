# FairVote

A decentralized voting system built upon a local Ethereum blockchain made available by Ganache.

### Technologies

- Truffle - framework for building Dapps (Decentralized applications) by using the EVM (Ethereum Virtual Machine). It provides the Truffle Box, which is a ready-made UI connected to the Ganache local, in-memory blockchain.
- Ganache - provides a local in-memory Ethereum-based blockchain that works on port 7545. It is created by Truffle.
- Metamask - user wallet that will be connected to the system/blockchain in order to vote. In order to cast a vote, a small sum of ETH will be taken from the user's wallet for gas fees.
- Solidity - an object-oriented language for writing and deploying smart contracts that represents the business logic of the voting system.
- web3.js - a JavaScript library with many sublibraries that enables our UI to interact with our local, in-memory Ganache Ethereum blockchain.
- HTML, CSS & JS - HTML and CSS are used for the UI of the system, while JS (along with web3.js) is used to connect our UI to the local blockchain.

### Usage

1. Open your Ganache workspace (you can install Ganache from https://trufflesuite.com/ganache/)
2. Open a terminal in the FairVote/election directory
3. Enter the command "truffle test" to ensure that everything will work as desired
4. Enter the command "truffle migrate --reset" to deploy the contract containing the business logic to your Ganache Ethereum blockchain
5. Enter the command "npm run dev". This command will open the UI in your browser and let you connect to your local blockchain via MetaMask. (if you don't have a MetaMask account/wallet, follow this tutorial: https://myterablock.medium.com/how-to-create-or-import-a-metamask-wallet-a551fc2f5a6b#:~:text=Click%20on%20the%20MetaMask%20extension,or%20create%20a%20new%20one.&text=Click%20on%20%E2%80%9CCreate%20a%20Wallet,%E2%80%9CNo%20Thanks%E2%80%9D%20to%20proceed.)
6. Make sure that you have a MetaMask private network added for "localhost:7545", i.e for the local Ganache blockchain. This can be done via the "Add Network" button in MetaMask.
7. You can now cast a vote with your MetaMask wallet, whose address will be associated with the user that cast the vote.
