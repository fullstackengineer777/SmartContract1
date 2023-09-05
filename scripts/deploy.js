const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();

  console.log(
    "Deploying contracts with the account:",
    deployer.address
  );

  console.log("Deploying contracts with the account:", deployer.address);  
  const greeter = await ethers.deployContract("Greeter");
  console.log("Greeter address: ", await greeter.getAddress());
  const token = await ethers.deployContract("Token");
  console.log("Token address: ", await token.getAddress());
 



}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });