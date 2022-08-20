import { ethers } from "hardhat";

async function main() {
  const deployerContract = "";
  const deployPoll = ethers.getContractAt(IFactory, deployerContract)

  const time = 100;
  //deploy new poll using factory contract 
  const deployNewPoll = deployPoll.addPoll(time);
  const view = deployPoll.showAllPolls();

  console.log(`This is the new poll ${deployNewPoll.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
