# Proof of passion for Blockchain technologies
### Day 102: Solidity
#### <ins>**Source code**</ins>
1. Source code of solidity must be writen in a file with extention of .sol
2. It is a high level language
3. Solidity is a staticaly typed language

### Day 101
#### <ins>**Hardhat deploy**</ins>
1. npm install --save-dev hardhat-deploy
2. include hardhat-deploy in hardhat.config
3. create a new folder deploy
4. write a deploy script 00_hello_world.js in deploy folder
5. the deploy script use hardhat ethers contract factory and save deployed contract address in contracts.json in root directory
6. **npx hardhat --network localhost deploy**
7. above command used to deploy each of the contract in deploy directory
8. package.json modified to use command **yarn deploy:local** to deploy all contracts on localhost

### Day 100
#### <ins>**Finishing**</ins>
1. write a script to deploy each contract by iterating each of contracts
2. save deployed contract address to same json
3. write a script to verify each contract on etherscan or bscscan 
4. following two commands are used to deploy and verify each contract

**npx hardhat --network bscTestnet run scripts/deploy.js**  
**npx hardhat --network bscTestnet run scripts/verify.js** 

### Day 99
#### <ins>**verify contract**</ins>
1. hardhat config updated to add bsctestnet and etherscan api
2. HellowWorld contract that was previously deployed is verified using following command
3. npx hardhat verify --network bscTestnet 0xa83Fe98ED15BEeBEE044E6D92E9F7e2b1762Ee1E
4. following output was thrown
Successfully submitted source code for contract
contracts/HelloWorld.sol:HelloWorld at 0xa83Fe98ED15BEeBEE044E6D92E9F7e2b1762Ee1E
for verification on the block explorer. Waiting for verification result...

Successfully verified contract HelloWorld on Etherscan.
https://testnet.bscscan.com/address/0xa83Fe98ED15BEeBEE044E6D92E9F7e2b1762Ee1E#code

### Day 98
#### <ins>**env setup**</ins>
1. env package is installed
2. rpc url and private key included in env
3. hardhat config is also updated to setup a new network and values are fetched from env
4. npx hardhat --network bsc run scripts/deployLocalHardhat.js

### Day 97
#### <ins>**Hardhat setup**</ins>
1. install hardhat and hardhat toolbox
2. hardhat config setup
3. started hardhat node
4. write a new script to deploy contract using hardhat ethers contract factory
5. compiled contracts by using command **npx hardhat compile**
6. deploy contract on local hardhat by using the following command **npx hardhat --network localhost run scripts/deployLocalHardhat.js**

following output thrown,  
The contract is deployed on address: 0x5FbDB2315678afecb367f032d93F642f64180aa3  
Program executed successfully!

### Day 96
#### <ins>**Deploy Contract on Testnet**</ins>
Created script to deploy the HelloWorld contract on BSC testnet by using ethers contract factory. The wallet that was created in previous step is used to deploy the contract by running the following command,  
**node scripts/deployTestnetContractFactory**  
The contract is deployed on testnet successfully following is the address to HelloWorld contract  
https://testnet.bscscan.com/address/0xa83Fe98ED15BEeBEE044E6D92E9F7e2b1762Ee1E  


### Day 95
#### <ins>**Create Metamask account**</ins>
1. Add metamask extention in browser and create account  
2. The public address of metamask account is : 0x7bb1Dff3cFa2c96034574D43396Cf6F0dAb506c8  
3. Exported private key of account  
4. Added BSC testnet in metamask  
5. Transfered BNB to this wallet on bsc testnet from bsc faucet  
https://testnet.binance.org/faucet-smart  


### Day 94
#### <ins>**Deploy Contract Locally by sending raw transaction**</ins>
The HelloWorld contract is deployed by sending raw transaction in ganache local chain by running the following command  
**node scripts/deployLocalTransaction.js**  
Following output logged in terminal
The contract is deployed on address: 0xd6BCc70512aC0D491d888d48C35E3282c226bf30  
Program executed successfully!  

### Day 93
#### <ins>**Deploy Contract Locally**</ins>
The hellow world contract that was compiled is now deployed locally on ganache by using private key provided by Ganache, rpc url and chainId with ethers ContractFactory. A script is writen named as deployLocalContractFactory.js and the script executed by following command,  
**node scripts/deployLocalContractFactory.js**  
The output of the script is as follow,  
The contract is deployed on address: 0x2812d79c7321197EF99780F4954a882A0C7DB096  
Program executed successfully!

### Day 92
#### <ins>**Compile**</ins>
HelloWorld smart contract compiled using solc js by running following command  
**npx solc --bin --abi --base-path . --include-path node_modules -o ./outputs contracts/HelloWorld.sol**  
The above command is included into package.json and the HelloWorld contract can alos be compiled from following command  
**yarn compile**

### Day 91
#### <ins>**Setup**</ins>
For blockchain development the local setup is done with following steps,
1. Node installed
2. A Node project is created using npm init  
3. License is MIT
4. A contracts folder with a HelloWorld contract
5. dotenv and ethers dev dependencies are installed
### Day 90
#### <ins>**Ganache**</ins>
Ganache is a private Ethereum blockchain environment that allows to you emulate the Ethereum blockchain so that you can interact with smart contracts in your own private blockchain. Here are some features that Ganache provides: Displays blockchain log output. Provides advanced mining control. Built-in block explorer.

### Day 89
#### <ins>**ethers.js**</ins>
Ethers.js is a Javascript library used to interact with ethereum blockchain ecosystems. It can be used to create, deploy, test and interact with smart contracts in js. The other library used to do the same work is Web3.js. Both are great libraries in web3 development. 


### Day 88
#### <ins>**Remix IDE**</ins>
Remix IDE, is a no-setup tool with a GUI for developing smart contracts. Used by experts and beginners alike, Remix will get you going in double time. Remix plays well with other tools, and allows for a simple deployment process to the chain of your choice. Remix is famous for our visual debugger.

### Day 87
#### <ins>**Mocking**</ins>
Mocking a contract essentially means creating a second version of that contract which behaves very similar to the original one, but in a way that can be easily controlled by the developer. The purpose of mocking is to isolate and focus on the code being tested and not on the behavior or state of external dependencies. In mocking, the dependencies are replaced by closely controlled replacements objects that simulate the behavior of the real ones.

### Day 86
#### <ins>**Hybrid smart contracts**</ins>
Hybrid smart contracts are the combination of offchain and onchain agreements. 

### Day 85
#### <ins>**Blockchain Oracle**</ins>
Any device that provide data to blockchain is called blockchain oracle.

### Day 84
#### <ins>**The oracle problem**</ins>
The oracle problem arises because blockchains have no secure and meaningful means to interact with external sources of data owing to their unique features. As we all know, blockchains are purely decentralized, immutable and secure it is hard to communicate smart contracts on blockchain to interact with outer world without relying on a central server. 


### Day 83
#### <ins>**EIP-1559**</ins>
EIP-1559 has changed Ethereum???s fee market mechanism. Fundamentally, EIP-1559 gets rid of the first-price auction as the main gas fee calculation. In first-price auctions, people bid a set amount of money to pay for their transaction to be processed, and the highest bidder wins. With EIP-1559, there will be a discrete ???base fee??? for transactions to be included in the next block. For users or applications that want to prioritize their transaction, they can add a ???tip,??? which is called a ???priority fee??? to pay a miner for faster inclusion. 


### Day 82
#### <ins>**First price auction**</ins>
In the first-price auction model, bidders participate in the auction simultaneously, and the highest bidder wins. The highest bidder pays the exact price per thousand ad impressions (CPM) that he bid during the auction. The winning bid is also known as the clearing price. First-price auctions generally favor publishers more than second-price auctions. In a survey by Digiday, 78% of publishers said the transition from second-price to first-price auction helped them maximize their ad revenues.


### Day 81
#### <ins>**Parent chain vs side chain**</ins>
A parent chain is the main blockchain in the network. It???s called a parent chain because stemming from it are one or more sidechains. A sidechain is a type of blockchain that exists parallel to the parent chain. 

### Day 80
#### <ins>**Cardano**</ins>
Cardano is a public blockchain platform. It is open-source and decentralized, with consensus achieved using proof of stake. It can facilitate peer-to-peer transactions with its internal cryptocurrency, ADA. The Cardano development approach is different from Bitcoin and Ethereum in a way, that it built from research that is research papers are used instead of whitepapers. 

### Day 79
#### <ins>**Eth Merge**</ins>
On Sept 6th 2022 the Beacon chain was merged into Ethereum main net. This event is called the merge. The major upgrade of this merge for ethereum was to switch from Ethereum Proof-of-Work to Proof-of-Stake. 

### Day 78
#### <ins>**Beacon chain**</ins>
Ethereum started employing two parallel blockchains in December 2020: a legacy chain for proof of work (Ethereum Mainnet) and a new chain for proof of stake (Beacon Chain). The merging of Ethereum's Mainnet and Beacon Chain created a single, proof-of-stake-based blockchain. Since its introduction in 2020, The Beacon Chain has served as a proof-of-stake ledger on the Mainnet.

### Day 77
#### <ins>**Sharding**</ins>
In ethereum 2.0 sharding is the solution for a scalbility problem. Sharding is a process that divides the whole network of a blockchain organization into several smaller networks, referred to as ???shards.??? Because it contains data that is unique to it, one shard stands out as unique and independent of other shards.

### Day 76
#### <ins>**Missed :)**</ins>

### Day 75
#### <ins>**Rollups**</ins>
Deriver their security from base layer instead of side chain. Blockchain rollups 'roll up' or compile a bunch of transactions and turn them into one single data and submit it to the Ethereum mainnet. They take the transactions out of the mainnet and process them off-chain, convert them into one single piece of data, and submit them back to the Ethereum mainnet.

### Day 74
#### <ins>**Layer 1**</ins>
Layer1 is the core layer for blockchain and it maintains the security of distributed ledger and transactions. It just supports the native blockchain token like in Bitcoin it???s BTC and in Ethereum blockchain it???s ETH. Other layers built on top of layer to add more functionality in blockchain but layer 1 works as is. 

### Day 73
#### <ins>**Different Layers**</ins>
At the beginning of the blockchain, era cryptocurrencies were just the native coin supported by the underlying blockchain technologies in the case of Bitcoin it was just BTC. We call the core of a blockchain network that maintains the security of blockchain by using different consensus protocols called Layer 1. With the advancement in blockchain technologies, more layers are added to layer 1. Well, there are many reasons to add more layers to blockchain and one of them is the scalability and limitations of decentralized blockchain technology to communicate to the outer world. 

### Day 72
#### <ins>**ERC**</ins>
This subcategory of an EIP was dubbed the Ethereum Request for Comments, a.k.a. ERC. And so far, there have been many Ethereum Request for Comments to set standards for the tokens that can be created on Ethereum. So, all tokens that are created on Ethereum must follow the standards set by these ERCs. Hence, they are called ERC tokens. Today, there are three ERC standards that are most widely used on Ethereum: ERC20, ERC721, or ERC1155. And just in case you???re confused, the numbers following ERC are simply the serial numbers of ???request for comments??? that proposed these standards.

### Day 71
#### <ins>**Embark**</ins>
Embark is a framework that allows you to easily develop and deploy Decentralized Applications. Embark currently integrates with EVM blockchains (Ethereum), Decentralized Storages (IPFS), and Decentralized communication platforms (Whisper and Orbit). Swarm is supported for deployment. Embark is Framework for serverless Decentralized Applications using Ethereum, IPFS and other platforms

### Day 70
#### <ins>**Truffle**</ins>
Truffle is a world-class development environment, testing framework and asset pipeline for blockchains using the Ethereum Virtual Machine (EVM), aiming to make life as a developer easier. Truffle is widely considered the most popular tool for blockchain application development with over 1.5 million lifetime downloads.

### Day 69
#### <ins>**Mist**</ins>
The Mist browser was an Ethereum interface intended to allow users to access the various dApps available on the Ethereum network. It was also known as the Ethereum dApp Browser. 


### Day 68
#### <ins>**Metamask**</ins>
Metamask is a cryptocurrency wallet used to interact with the Ethereum blockchain. Users can create and manage their wallets that are used to interact with the decentralized world. It is available in the browser, browser extension, and also in the mobile app. 

### Day 67
#### <ins>**Initial Coin Offering (ICO)**</ins>
A company seeking to raise money to create a new coin, app, or service can launch an ICO as a way to raise funds. Interested investors can buy into an initial coin offering to receive a new cryptocurrency token issued by the company. This token may have some utility related to the product or service that the company is offering or represent a stake in the company or project.


### Day 66
#### <ins>**Digital coins**</ins>
Digital coins are primarily cryptocurrencies that are stored on computer systems and operate on computer networks. The unit of any digital cryptocurrency is called the coin; essentially, digital coins like BTC, ETH, and USDT are all digital coins. 

### Day 65
#### <ins>**Hyperledger**</ins>
It is a project founded by Linux foundation and contributed by many others like IBM and Intel. Hyperledger is an open source project created to support the development of blockchain-based distributed ledgers. Hyperledger consists of a collaborative effort to create the needed frameworks, standards, tools and libraries to build blockchains and related applications.

### Day 64
#### <ins>**Mainnet and Testnet**</ins>
Blockchain mainnet is the network where real transactions take place. But for testing purposes, there are also test networks available to test smart contracts on by using virtual money instead of actual money this is because if the contract was not audited properly it might cause some financial loses. Although testnets have some drawbacks it is ideal for testing purposes whereas mainnet is more secure and decentralized. 

### Day 63
#### <ins>**Proof of Burn**</ins>
Is one of the consensus protocol of blockchain like PoW and PoS. It requires miners to burn their coins or currency to gain virtual rigs. When the miners get more virtual rigs the node can create a new block and they get rewards in native currency coin as block reward. While burning the coins it acts as PoW. By burning more coins it gets higher chance to become the winner like PoS. And the overall ecosystem acts under PoB.

### Day 62
#### <ins>**Proof of elapsed time**</ins>
Proof of elapsed time is similar to PoW but is much more energy efficient. HyperLedger Sawtooth currently uses PoET and it is a permissioned blockchain network. The idea is to carry a lottery system and the probability of winning for each node is equally likely each node is assigned a waiting time for that time the node will sleep and switch to another work. The node with the shortest wait time will awake and find the new block and the process is repeated. It seems that PoET is a less decentralized system. 


### Day 61
#### <ins>**Permissioned blockchain**</ins>
Is basically a distributed ledger but the ledger is not accessible publicly. Only peers with required permissions or certificates can only allowed to access and perform certain actions on the ledger. Unlike bitcoin which is essentially permissionless and the ledger is publicly accessible by anyone. 

### Day 60
#### <ins>**Proof of Activity**</ins>
Proof-of-activity is the consensus algorithm which combinly use the PoW and PoS. it uses the best aspects of both algorithms. Miners start to find the new block as of PoW and when the new block is identified then the algorithm switched to PoS the validators are selected to validate newly found block if all validators validate the block it becomes complete block and added in blockchain. 

### Day 59
#### <ins>**Delegated proof of stake**</ins>
In proof-of-stake there is a concept if the validator has not setup the properly or is unable to perform as an active validator he can stake his funds and delegate the validation to another user who has setup the node properly and can participate as an active validator. This is called delegated proof of stake. 

### Day 58
#### <ins>**Slashing**</ins>
In the proof of stake consensus protocol when the validator is chosen then the validator has to validate a block. If the validator failed to validate the block for any reason like the node wasn???t setup properly or due to an internet issue, in either case, the amount they???ve staked maybe deducted as a penalty, this is called slashing.

### Day 57
#### <ins>**Proof of stake**</ins>
Proof of stake is the alternative to proof of work. In this consensus algorithm there are validators instead of miners. The validators are chosen based on the amount of native coin they???ve staked to become validator. The validators could be chosen based on the amount of coins stake, the time the validator has been validating in the network or they can be choosed randomly. Or all approaches can be combined to choose the validators. Validators then validate the blocks and gain the rewards if they do fraudulent activities then their funds can be slashed as a penalty. Ethereum is the blockchain network that is using proof of stake. 

### Day 56
#### <ins>**Namecoin**</ins>
Namecoin is a decentralized application that is used to register names based on first to file paradigm. The same logic can be used to register domain names on decentralized. Once the domain name is registered by an owner no one can claim the same domain name unless the owner itself transfers it to someone else. This is a very basic example to understand the decentralized blockchain system. In Ethereum, the Namcoin-like application can be implemented with just a few lines of code. 

### Day 55
#### <ins>**Ethereum Merkle Tree**</ins>
Just like in the bitcoin blockchain Ethereum blockchain also has Merkle tree which is a data structure to store transactions in a binary tree and each parent node hash is made of the child node???s data. Merkle tree also has a root hash, if anything anywhere in the tree is changed then the root hash will no longer be the same. Also, in Ethereum, to validate a transaction, only the branch of Merkle tree of a block is downloaded instead of the whole blockchain and the whole Merkle tree. 


### Day 54
#### <ins>**Uncle block**</ins>
In the bitcoin blockchain only one new block is mined and others are discarded. And if on the same network two different nodes have different leading blocks then they come to a consensus when new blocks are mined by using longest chain rule. But in ethereum blockchain if two blocks are mined at the same time then the chain has two leading nodes but one of them will continue the chain. The second node where the chain will not be increased is called the uncle block. The concept in ethereum is also introduced to give some cut to the node who has added an uncle block instead of completely discarding its efforts.


### Day 53
#### <ins>**Eth hash rate**</ins>
Ethereum hash rate is a numeric value that defines how many hashes have been calculated by miners to find a new block. 

### Day 52
#### <ins>**RLP**</ins>
In Ethereum's execution layer there???s an encoding scheme used that is space-efficient to store arbitrary binary data. It is just used to encode structure type-specific data. It attaches prefix to every data and the first element of the array is the type followed by their size and then the data. 


### Day 51
#### <ins>**ABI**</ins>
When a program has complied it produces two outputs, one is bytecode and the other is ABI. ABI is the standard way to communicate the contract and it???s produced in JSON format. It contains function signatures of the contract, their inputs, and outputs along with data types.

### Day 50
#### <ins>**Bytecode**</ins>
The program for a smart contract is written in high-level programming languages like solidity. While the program is compiled it generates two outputs that are bytecode and ABI. Bytecode is the instructions in a low-level language that can be understood by the EVM. The byte code is not in human-readable form but can be readable to machines. It looks like the following,  

6080604052348015600f57600080fd5b5060878061001e6000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c8063037a417c14602d575b600080fd5b60336049565b6040518082815260200191505060405180910390f35b6000600190509056fea265627a7a7230582050d33093e20eb388eec760ca84ba30ec42dadbdeb8edf5cd8b261e89b8d4279264736f6c634300050a0032


### Day 49
#### <ins>**EVM**</ins>
Ethereum smart contract program is executed by Ethereum virtual machine. EVM has predefined opcodes and the low-language instructions generated by a high-level language like Solidity is converted to low-level language that the EVM could understand and execute. 

### Day 48
#### <ins>**Halting problem**</ins>
In computer science, a halting problem is defined as there???s no such algorithm or technique by 
which we can predict that either a program will infinitely run or will stop. In turing complete
 language we face this problem and is named as Halting Problem. It is also mentioned in the
 Ethereum whitepaper.

### Day 47
#### <ins>**Etherum messages**</ins>
Ethereum messages are the data sent and received by the contracts or a transaction it self. They can used to pass data between two accounts. Can be initiated by the transactions or contracts

#### <ins>**Gas**</ins>
Gas is a term in Ethereum blockchain that determines how much computational effort is required. For every computation in a transaction, there is a gas defined and a fee of the transaction is deducted based on this gas. A gas fee must be paid for transaction execution. 

### Day 46
#### <ins>**Skipped**</ins>
;(

### Day 45
#### <ins>**Ethereum transaction**</ins>
Ethereum transaction is the data signed and sent by an external entity to blockchain. Transactions are logged on blockchain. Transactions can send other messages and they???re called internal messages but they???re not transactions and neither they are logged on blockchain. 

### Day 44
#### <ins>**External account and key pair**</ins>
An external account holder holds the public private key pair. It does not holds the funds the funds are stored on the public ledger that can be calculated by the public address. The external account can also send transactions to the blockchain by singing the transaction with their private key and everyone on blockchain network can validate that transaction. 


### Day 43
#### <ins>**Ethereum Accounts**</ins>
An Ethereum account is an entity that has a balance and can send or receive transactions. It can be an external entity controlled by the user as a wallet or can be governed by a smart contract deployed on the blockchain.


### Day 42
#### <ins>**Smart contracts**</ins>
Ethereum introduces the concept of smart contracts. It is an executable code sent to blockchain. No one can change the contract once it has been deployed on the blockchain. The functions of smart contracts can be called from external entities or other contracts. Smart contracts are like the classes in other programming languages but with different properties that other languages. It contains the property of turing completeness. 

### Day 41
#### <ins>**Ethereum blockchain**</ins>
Ethereum is called the second generation blockchain technology whereas the first generation of blockchain is Bitcoin. Ethereum introduces the concept of smart contracts. With the capability of sending and receiving transactions as an executable piece of code on blockchain that is immutable. It uses proof of stack instead of proof of work. It also introduces new concepts like gas, gas fee and gas price etc. Ethereum also found the basis for fungible and non fungible tokens and assets. 


### Day 40
#### <ins>**Turing completeness**</ins>
A programming language is called a Turing complete language capable of performing all operations that a Turing machine can do including loops. Bitcoin scripting language does not contain this property of Turing completeness hence bitcoin is not sufficient for lots of tasks that can be done using a programming language for complex logic. 


### Day 38
#### <ins>**Limitations of bitcoin**</ins>
Bitcoin is the very first real working example of decentralized application that was purely built on blockchain technology. But bitcoin used to store only transactions records publicly in a ledger. It also supports a low level scripting language for transaction validation purposes. But this scripting language has lack of turing completeness. 

### Day 37
#### <ins>**Stack based scripting language**</ins>
A stack based language is a kind of low level language. The main memory to store program???s data in this language is stack. While executing the program instructions are popped from stack one by one and executed. And when an operator is popped from stack let???s say a binary operator then the operands for this operator are also popped from stacked and then the operator is applied and result is pushed back in stack. Keep executing the instructions until the stack is empty. 

### Day 36
#### <ins>**Bitcoin scripting language**</ins>
Bitcoin supports a low level scripting language. The language supported by bitcoin is the stack based language which is used for simple operations to be done on the transaction. It is optional in the transaction. A simple dapp can be created on bitcoin as well but it has some limitations. But this is what who found the bases for smart contracts in Ethereum. 

### Day 35
#### <ins>**Cryptocurrency**</ins>
It is a digital currency that is built using cryptography under the hood. It stores the transactions to and from one address to another. It just stores the amount coming in and going out. Cryptographic algorithms are heavily used to make cryptocurrency functional and secure. Bitcoin is a glorious example of cryptocurrency. 

### Day 34
#### <ins>**Nakamoto consensus**</ins>
It was illustrated in the bitcoin whitepaper. The idea is that the voting does not depend on the number of majority nodes but rather depends on the computational power. It essentially prevents the Sybil attack. The paper introduces a concept proof of work that tells about a problem that is hard to solve but easy to validate. When a node solves the puzzle it broadcasts a new block to the entire network and every node comes to a consensus. But the new blocks propagate through the network at different speeds which might cause some of the nodes with different latest nodes. But eventually, everybody comes to the right consensus because they trust the longest chain. 


### Day 33
#### <ins>**Our solution to millionaire's problem**</ins>
Our solution is the simpleset solution to millionair???s problem. Divide the networths into slabs of equal window. For each slab there is a half fold paper. One party will mark tick on only one half fold paper and arrange these papers in a sequence of slabs. All papers are empty only one has a tick on its bottom and it is hidden from the other party. The other party will mark tick and cross in all of the half fold papers in such a way that he will mark continuous ticks to his respective slab and will mark cross to uppar slabs to its networth and they are hidden to first party. Now all the folds are randomly mixed and only fetch the paper with tick on the bottom and destroy rest of the papers. Now if this paper has a tick that means the second party has equal or greater net worth and if there is a cross inside the half fold paper that means the second party has net worth less that the first party. 


### Day 32
#### <ins>**Millionaire's problem**</ins>
Millionaire's problem is the classical problem of secure multiparty computation. The problem is defined as there are two millionaires bet on each other. One of them has to offer a dinner that has more net worth than the other one without revealing their actual net worth. Furthermore they don???t want to rely on any third person to whom they disclose their networths. There should be some function that should compute something like following,  
p = F(a, b)  
p must be true if a>=b and false otherwise  
  
Inputs ???a??? and ???b??? must not reveal actual networth of any of the party


### Day 31
#### <ins>**Secure Multiparty computation**</ins>
SMC is the subfiled of cryptography. The idea is multiple parties can compute something with their inputs without relying on third party while keeping their inputs private. Let???s say there is a  function that do some operations on the given inputs and compute some output. The inputs are encrypted and no one can decrypt the input except the one who has encrypted the inputs. But the function is capable of computing the certain operations on the encrypted inputs. For example let???s say, there are three parties X, Y and Z with their inputs x, y and z respectively
They???ll compute the function to get an output for their inputs but the input will be private to other parties.  

p = F(x, y, z)


### Day 30
#### <ins>**Zero knowledge proof**</ins>
Zero knowledge proof in classical computer science is the idea to prove that someone has the knowledge but without revealing the actual knowledge. ZKP has two types namely interactive and noninteractive. In interactive ZKP two parties interact iteratively until a sound conclusion is drawn that a party has certain knowledge without revealing the actual knowledge to another party. But this has to be repeated whenever one party has to prove its knowledge to another party. In noninteractive ZKP the computation for proof is held only once. In some cases, it becomes infeasible to give proof to everybody by repeating the same process of computations. One thing more the ZKP does not completely make the probability of fraud to zero but it reduces the probability approaches to zero by having more computations such that it is extremely less probable to trick the system. 

### Day 29
#### <ins>**Sybil Attack**</ins>
Sybil's attack is a malicious attack on a p2p network. The idea is to have duplicate accounts of an attacker such that it makes it difficult for the system to determine the actual number of the user. The attack more commonly occurs on a p2p network system and it tries to take over the system. In blockchain, 51% attacks could be caused by the Sybil attack by sending invalid transactions and having multiple replicated malicious nodes to falsely approve and validate the invalid transaction. 

### Day 28
#### <ins>**Bitcoin blockchain**</ins>
Bitcoin was the first realization of blockchain technology. Bitcoin is the first real decentralized network that solved the Byzantine generals' problem of game theory. But one thing must be mentioned the blockchain is not Bitcoin. Blockchain is the underlying technology that Bitcoin use. Bitcoin is a digital currency and is considered the first generation of blockchain. It is the decentralized system that keeps track of a certain amount of bitcoins in and out. Bitcoin uses the proof of work as its consensus protocol. It also has low-level scripting language that proved to be the basis of second-generation blockchain which found the Ethereum smart contracts. 


### Day 27
#### <ins>**Block header**</ins>
Blockchain is the sequence of blocks containing transaction data and proof of work of nodes. Each block roughly consists of three parts including the previous block hash, data, and current block hash. As the blockchain size keep on increasing with time it gets hard to download all blockchain for transaction validation and the smaller devices are unable to download the complete blockchain for validation. Hence they need to download the block headers. Download only the branch of transactions that contains the transaction to be validated. The block header contains the following information,  
1. Previous block hash
2. The root hash of Merkle tree
3. The current hash of a block
4. The nonce
5. Timestamp
6. difficulty


### Day 26
#### <ins>**Markov???s chain**</ins>
Markov???s chain in mathematics is the system that is used to represents sequence of states. One of the main property of Markov???s chain is that it???s memoryless that. That means to move to the next state it depends only on current state irrespective of how it comes to the current state. It is a probabilistic model and transition from any state to other state has a certain probability. Markov???s chain is a probabilistic model that can also be represented and solved using calculus. Gambler???s ruin problem in blockchain can also be represented and evaluated using Markov???s chain. 

### Day 25
#### <ins>**Gambler???s ruin problem**</ins>
The gambler???s ruin problem is the classic statistical problem which is to find the probability that a gambler will win all the wealth ???k??? with his initial wealth of ???i??? and start at any point of time ???n??? and will play indefinitely until he wins or lose all of his wealth. It essentially ends up with success by gaining all wealth ???k??? or 0 wealth and hence it???s called The Gambler???s ruin problem. The problem is mentioned in the Bitcoin white paper to calculate the probability that the attacker will win against the system and it reduces to nearly zero when more nodes are attached to the system. 

### Day 24
#### <ins>**Merkle Tree**</ins>
Merkle tree is a binary hash tree. Like other trees, the Merkle tree has a root node, intermediate nodes, and leaf nodes. The leaf nodes are data nodes and the other nodes are calculated using a hash function. The height of the tree depends upon the number of data nodes that is leaf nodes. By combining every two nodes and passing it to the hash function and going on to the top until a root hash is calculated. The tree is used for transaction validations as well. The hash of the tree is the commitment and the leaf nodes are part of the commitment. The block header in every block contains the root hash of Merkle tree. 


### Day 23
#### <ins>**Byzantine fault tolerance**</ins>
Byzantine fault tolerance is the property of any system that keeps a decentralized system from falling into the Byzantine Generals' Problem. The idea is to keep the system functional and running even if some of the generals or nodes in the system do not respond or act maliciously. This property must be held in a decentralized system to work properly. 

### Day 22
#### <ins>**Byzantine generals problem**</ins>
The Byzantine generals problem is the classical game theory problem which is defined as there being many generals and they have to attack a city. If they all attack at the same time they will win or else they???ll lose. The constraint is that their medium of communication is not fully secure so they have to achieve trust in a trustless environment. Also, there are some traitor generals as well as honest generals. Traitor generals can send false messages to other generals. The Byzantine General's Problem occurs only in decentralized systems and it is not the problem in centralized systems. Bitcoin is the first realized solution to the problem and before it, there was no absolute solution to the problem in a decentralized system. Bitcoin solves this problem by consensus protocol. 

### Day 21
#### <ins>**51% attack**</ins>
In a blockchain network, every decision is made on a voting system. Every transaction is validated by every other node in the system but the new transaction can only become part of the ledger only if the majority of nodes validate it and accept it as a valid transaction. Hence the census is the main characteristic of a decentralized system an attack can only be succeeded if the attacker controls the 51% power of the network. 

### Day 20
#### <ins>**Longest chain rule**</ins>
This rule states that the longest chain in the blockchain network would be considered as the valid chain. When any node finds a new block the node then broadcasts the latest chain to every other node. Every node then validates this chain from block headers. If a malicious node is trying to mutate the original chain then this node must have the longest chain otherwise the network will keep on adding new blocks and the attacker then has to chase the rest of the network speed which is very much difficult to achieve. 


### Day 19
#### <ins>**Incentivisation**</ins>
The miner who mines the new block will be incentivized with mining rewards from thin air. In Bitcoin mining is the only way to generate new Bitcoins out of nowhere. It motivitate miners to compete with each other to participate in the security of blockchain and get rewards and it is the clever way to generate revenue instead of fooling the network. When Bitcoin was started the mining reward was 25 and it decreased over time by half i.e. 12.5 and now the current mining reward of Bitcoin is 6.25. The incentive model is used to generate new currency and it also welcomes new nodes to participate in the transactions and mining. After every 210,000 blocks or roughly after 4 years the mining reward cut into half.

### Day 18
#### <ins>**Dynamically adjusted target**</ins>
To solve the cryptographic puzzle a target is dynamically set. The generated hash of the new block must be less than this target. The target is updated every 2016 blocks in blockchain. And a block in Bitcoin is mined every 10 minutes so roughly the target is adjusted every 2 weeks.  

**new_target = old_target * (actual time took for 2016 blocks / 2016*10 minutes)**


### Day 17
#### <ins>**Difficulty**</ins>
Difficulty is defined by the network. It is the number of leading zeros in the hash guess puzzle. The idea is to guess the hash repeatedly until the output of the hash contains minimum leading zeros as defined by the difficulty. With increase in the number of leading zeros it gets harder to generate a hash from given data and guessed nonce that has sufficient number of zeros. So in summary with increase in difficulty more computational power required to mined the block. Increase in the difficulty reduces the window for hash guess. 

### Day 16
#### <ins>**Cryptographic Puzzle**</ins>
In order to add a new block into blockchain miners have to solve a cryptographic puzzle. The candidate block has the transactions data, previous block hash and timestamp. The idea is to guess a number that by combining with the block data will produce a hash for the block. The hash must be less than the dynamically adjusted target. The puzzle is a totally random try and test. To solve this puzzle miners have to use their computational power and hence they???ll prove their work. The one miner who will first solve the puzzle will be able to mined the new block into blockchain.  

**hash(data, previous hash, nonce) < target**  

The output of the hash function is totally unpredictable hence it is just a try and test puzzle. Solving a puzzle means finding the nonce that is an integer number that will produce a hash who???s value should be less than the dynamically adjusted target.  


### Day 15
#### <ins>**Proof-of-work**</ins>
PoW is one of the consensus algorithms that prevent malicious activities in the network and ensure the security of blockchain. In order to mine the candidate block, miners compete and solve a cryptographic puzzle by using their computational power. The nodes with more computation power are most likely to mined the block and in order to mined the block they have to prove that they used their computational power, hence it???s called proof-of-work. Only the winning node would be able to append a new block into the blockchain system and every other node will update their own copy of blockchain accordingly. The basic idea is to have an algorithm that has a problem which is difficult to solve but easy to validate that the node has worked hard to guess the right answer. And other nodes can validate their work without doing the same hard work but with very small computation.

### Day 14
#### <ins>**Candidate block**</ins>
A candidate block is a potential block to be added to the blockchain next to the current verified block. It contains the confirmed transactions data, previous block hash, and timestamp. Miners will compete to mine this block into the blockchain by guessing a special number. The miner who will first find this number will be able to append this candidate block into the blockchain and by combining all this block data a block hash will be created.

### Day 13
#### <ins>**Transaction pool**</ins>
Transaction pool is the intermediate stage where all the transactions sent to the network came and all of them are referred to as unconfirmed transactions. Then mining nodes pull these transactions and validate them with their signature and their spending from the ledger. The transaction is accepted by the network only if the majority of the network nodes validate it and rejected it otherwise. Once the transaction is fetched from the transaction pool and accepted by the network nodes it becomes immutable. So in a sense of database transaction, it works the same, it???s either committed or rolled back. If it???s committed then the changes are persistent and they???ll reside forever. 

### Day 12
#### <ins>**Mining nodes**</ins>
In the blockchain network, there are some special nodes called mining nodes. These nodes are part of a blockchain system that ensures the security and integrity of the system. These nodes keep on working to maintain the reliability of the network by putting their effort into the system. In the case of Bitcoin, these nodes keep on working to find the hash by solving a mathematical puzzle so they can mine a block to the blockchain and get the reward. And it makes sure that not a particular body can add blocks to the blockchain but the one who is putting in his effort. These nodes are special nodes because their primary aim is not to make the transactions in the network but to put their effort to make the network secure and to get some rewards out of thin air.

### Day 11
#### <ins>**Double spending attack**</ins>
The double spending attack is the attack in which a transaction ???T1???  with a valid signature is issued to the network and some amount is sent to a public address ???a???. The recipient of the amount ???a??? will wait for the transaction to be confirmed and meanwhile, the sender of the transaction ???T1??? issued another transaction ???T2??? to transfer the amount to another wallet. This is the double spending problem in the blockchain and blockchain technology has developed the algorithms to prevent these kinds of attacks by consensus protocols.


### Day 10
#### <ins>**Consensus protocol**</ins>
In a distributed network where all nodes are equal and every node must have equal rights, it???s hard to believe that every node in the system is trustworthy. To validate transactions in the distributed system it is necessary for the maturity of the nodes to agree upon the validity of the transaction. And if the majority agrees upon the validity of the transactions then they should become part of the ledger and become immutable. And hence this is the case where blockchain consensus protocols came in. One of the major problems that these consensus protocols eliminate is the ???Double Spending Problem???. If two transactions are sent to the network one is paid to one wallet and the second is paid to another wallet then these transactions are first sent into unconfirmed transactions. And if one transaction is confirmed first then the second one would be rejected and if they both came at the same time to be confirmed then only one would be accepted with a majority of votes. 


### Day 9
#### <ins>**Distributed Ledger**</ins>
All the transactions in the distributed network are recorded as a ledger with append only fashion. This ledger is publicly available to everyone. Everybody has a copy of the ledger in the synchronized fashion. Each node in the network validates each transaction and updates its ledger accordingly and hence it???s called the distributed ledger. Transactions are grouped into blocks and then each block appended at the end of the chain. 


### Day 8
#### <ins>**Network Architecture**</ins>
The Blockchain technology built on the distributed networks where the transactions occur on multiple systems called as nodes. The nodes in the blockchain system communication are peer-to-peer. That each node can communicate to any other node in the network which makes it essentially transparent about what???s going on or what???s happening there. 


### Day 7
#### <ins>**Validating transactions**</ins>
The first step of blockchain security is the validation of each transaction. The signed transaction can be validated with a public key and signed transaction message with very low computational steps. The pseudo for for signing and validating the transaction is as follow. 
  
Signing(private key, message) => signature   
Recover(public key, signature) => address


### Day 6
#### <ins>**Signed transaction**</ins>
In a distributed system each transaction must be signed by the private key so every other node can verify that the transaction is issued by the real owner. 
Let???s just have a case where a person initiates a transaction and moves funds from some other person's account to himself but every other node in the network won???t allow the transaction because it doesn???t have a valid signature. This is the very first step towards the security of a distributed network transaction system. Every transaction made on the blockchain is signed by the initiator of the transaction and every other node in the network is able to validate this transaction and can vote either if they have to accept the transaction or not without knowing the private key. 


### Day 5
#### <ins>**EllipticCurve**</ins>
Elliptic curve is a cryptographic algorithm used for data security. It is as secure as RSA but with a shorter length key. The general Elliptic curve equation is as follow

y^2 = x^3 + a*x + b

It generates the private key by choosing an ???X??? and finds the point on the curve repeatedly doing a computation step X times. In this way it makes it a trapdoor function that can go only one way. With public and private key a message can be encrypted but with the given cipher and public key it???s almost impossible to guess the private key by using the computational power of modern computers. 


### Day 4
#### <ins>**Wallet**</ins>
The term wallet is mainly associated with the cryptocurrencies and not to the blockchain traditionally. But in reality the wallet is the public private key pair and a public address. All the transactions stored in the cryptocurrency distributed ledger built over the blockchain is recorded with a given public address and hence everybody can know the transaction history associated with the address and hence it???s called a wallet. It also contains how much amount came into this wallet(transferred to this address) and how much it has spent(transferred from this account) and its current balance(sum of total ins and outs). 

### Day 3 
#### <ins>**Privacy**</ins>
To participate in the distributed decentralized application nobody needs to reveal his or her identity. All they need to have a public and private key pair and from private key they can derive a public address which is the identity for the particular person in the network. All the transactions are pointing to or from this address which is an arbitrary string and no one can recalculate the private key or any other personal information related to that string which is indeed a hash generated. This public address in the block chain system is the hash of the public key associated with the given private key. So it's computationally impossible to guess the private key from the public address and no personal information is attached with the public address.

### Day 2 
#### <ins>**Key pair**</ins>
A key pair is the pair of public and private keys. Public keys can be produced by the private key. There is no way to determine the private key from a given public key. 
Private keys must be kept secure and private whereas public keys are revealed and known by everyone. 
For insecure network channels the message is signed by the private key (encryption) and creates a signature (cypher). This signature can only be decrypt by the public key associated with the private key with whom the message was signed. 
This helps to ensure that the given signed message is originally generated by the creator of the transaction. 
A public address is also derived from the private key.
RSA and EllipticCurve are two of the famous public key encryption algorithms. EllipticCurve can provide the same security level as of RSA but with shorter key length which can save computations. Hence Bitcoin uses the EllipticCurve signatures. 

Example:  
Assume we have a message as ???m???, private key as ???sk??? and public key as ???pk??? and an Elliptic Curve signature function as ???E??? which will sign the message and produce the signature as ???s???. And the function to recover message from the signature is ???C??? then

sk, m; 	E(sk, m) => s
pk, s; 	C(pk, s) => m

### Day 1 
#### <ins>**Hash function**</ins>
A math function that converts an arbitrary string or file into fixed length string(sequence of characters)
A smaller change in the input might change the output of hash function completely
The output of the hash function is completely unpredictable.
The function is irreversible i.e. the input for a given hash string cannot be produced from the output. 
The function maps the input and output in one-to-one fashion. I.e. a given output can only be reproduced by the same input.
The commonly used hash function is SHA-256
Example:
The hash function used for example is SHA-256

SHA256(???**blockchain technologies**???) =>  afd63d45baadf7eaf2e9b861054f7b435ae5200d46bf4e145468dc38d1e110d7

SHA256(???**blockchain technologies.**???) => a16478e4c8f41d65a5eed3e336b21b1685e4c9b6277897e82a67097d8762ec14

It can be seen that a smaller change in the input has changed the output completely. 


