import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import dotenv from "dotenv"
dotenv.config();

const config: HardhatUserConfig = {
  solidity: "0.8.18",

  defaultNetwork: "sepolia",
  networks: {
    hardhat: {
      forking: {
        enabled: true,
        //@ts-ignore
        url: process.env.MAINNET_RPC
      }
    },
    sepolia: {
      url: process.env.SEPOLIA_RPC,
      //@ts-ignore
      accounts: [process.env.PRIVATE_KEY1, process.env.PRIVATE_KEY2]
    },
    goerli: {
      url: process.env.GOERLI_RPC,
      //@ts-ignore
      accounts: [process.env.PRIVATE_KEY1, process.env.PRIVATE_KEY2]
    },  
  },
  etherscan: {
    //@ts-ignore
    apiKey: process.env.ETHERSCAN_API
  },
};

export default config;

