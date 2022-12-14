const { run } = require('hardhat');
const {network} = require('hardhat')

const verifyContract = async (contractAddress, constructorArguments) => {

    /**
     * Run hardhat task for contract verification
     */
    try {
        await run(`verify:verify`, {
            address: contractAddress,
            constructorArguments: constructorArguments,
        });
        console.log(`Contract verified: ${contractAddress}`);
    } catch (error) {
        console.log(`Contract: ${contractAddress}`);
        console.log('Error: ', error.message);
    }
}

async function main() {
    const networkIdentifier = network.name
    const contracts = require('../contracts.json')

    /**
     * Iterate over each contract, get contract name, constructor arguments and verify on etherscan or bscscan using hardhat
     */
    const contractNames = Object.keys(contracts)
    for(let contractName of contractNames){
        const contractData = contracts[contractName]
        const contractAddress = contractData[networkIdentifier].address
        const constructorArguments = contractData[networkIdentifier].args

        await verifyContract(contractAddress, constructorArguments)
    }
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});