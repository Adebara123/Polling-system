import { ethers } from "hardhat";

async function main() {
 

  const PollingFactory = await ethers.getContractFactory("factoryPolling");
  const pollingFactory = await PollingFactory.deploy();

  await pollingFactory.deployed();

  console.log(`This is the factory contract address  ${pollingFactory.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
