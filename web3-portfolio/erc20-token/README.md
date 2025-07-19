# ERC-20 Token Project – MeuToken

This project creates a basic ERC-20 token using Solidity and Hardhat.

## 🧱 Token Details
- Name: MeuToken
- Symbol: MTK
- Initial Supply: 1000 MTK (minted to deployer)

## ⚙️ How to Use

### 1. Install dependencies
```
npm install
```

### 2. Create a .env file
Copy `.env.example` to `.env` and fill with your Alchemy key and wallet private key.

### 3. Compile contracts
```
npx hardhat compile
```

### 4. Deploy to Sepolia testnet
```
npx hardhat run scripts/deploy.js --network sepolia
```

## 📦 Stack
- Solidity
- Hardhat
- OpenZeppelin
- Alchemy / Infura
- Sepolia Testnet

MIT License
