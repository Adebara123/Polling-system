import { ethers } from "hardhat";

async function main() {
 
  const CONTRACT_ADDRESS = "";
  const Polling = await ethers.getContractAt(Ipolling_system, CONTRACT_ADDRESS);
  

  console.log(`This is the factory contract address  ${Polling}`);
  const ID = 1;
  const vote = await Polling.vote(ID);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
