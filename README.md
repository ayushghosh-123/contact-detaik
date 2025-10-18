Here’s a clean, beginner-friendly **README.md** for your `Counter` Solidity contract — perfectly aligned with the **Flow EVM testnet workshop** and **HackQuest hackathon submission** requirements 👇

---

### 🧮 **Counter Smart Contract**

A simple and beginner-friendly **Solidity smart contract** deployed on **Flow EVM Testnet**.
This project demonstrates the fundamentals of smart contracts — including **state variables**, **functions**, **events**, and **transaction interactions** using **Remix IDE**.

---

## 🚀 **Overview**

The **Counter Contract** allows users to:

* Increment a number stored on the blockchain
* Decrement the number (with validation so it never goes below zero)
* Reset the count to zero
* View the current count anytime

This project is part of the **HackQuest × Flow Build Station** — a 5-hour hands-on workshop to learn and deploy your first smart contract on **Flow EVM Testnet**.

---

## ⚙️ **Tech Stack**

* **Language:** Solidity `^0.8.20`
* **Network:** Flow EVM Testnet
* **IDE:** [Remix IDE](https://remix.ethereum.org)
* **Wallet:** MetaMask
* **AI Tools:** ChatGPT / Claude / Cursor IDE (optional for code or README generation)

---

## 📜 **Smart Contract Code**

File: `Counter.sol`

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 public count;
    event CountUpdated(address indexed user, uint256 oldCount, uint256 newCount);

    function increment() external {
        uint256 oldCount = count;
        count += 1;
        emit CountUpdated(msg.sender, oldCount, count);
    }

    function decrement() external {
        require(count > 0, "Counter cannot go below zero");
        uint256 oldCount = count;
        count -= 1;
        emit CountUpdated(msg.sender, oldCount, count);
    }

    function reset() external {
        uint256 oldCount = count;
        count = 0;
        emit CountUpdated(msg.sender, oldCount, count);
    }

    function getCount() external view returns (uint256) {
        return count;
    }
}
```

---

## 🧠 **How to Deploy on Flow EVM Testnet**

1. Visit [Remix IDE](https://remix.ethereum.org)
2. Create a new file named `Counter.sol` and paste the above code
3. In the **Solidity Compiler** tab, select version **0.8.20 or above**
4. Go to the **Deploy & Run Transactions** tab
5. Choose **Injected Provider - MetaMask** as the environment
6. Ensure your MetaMask is set to the **Flow EVM Testnet**
7. Click **Deploy**
8. Once deployed, you’ll see contract functions like:

   * `increment()`
   * `decrement()`
   * `reset()`
   * `getCount()`
9. Try interacting — each function call will create a blockchain transaction

---

## 🔗 **Important Links**

* 🪙 **Flow Faucet:** [https://faucet.flow.com/fund-account](https://faucet.flow.com/fund-account)
* 🌐 **Remix IDE:** [https://remix.ethereum.org](https://remix.ethereum.org)
* 🔗 **Flow EVM Testnet (ChainID 545):** [https://chainlist.org/chain/545](https://chainlist.org/chain/545)
* 💻 **Hackathon Submission:** [Forte Hacks Global Hackathon](https://www.hackquest.io/hackathons/Forte-Hacks?utm=ccu)

---

## 🏆 **Project Submission Checklist**

✅ Smart contract deployed on Flow EVM Testnet
✅ Contract address copied from Remix
✅ Screenshot of successful deployment
✅ Public GitHub repo with this README
✅ Submitted to **HackQuest Forte Hackathon**

---

## 🌟 **Future Improvements**

* Add access control (only owner can reset)
* Track how many times each user interacted
* Create a simple frontend using React + Ethers.js

---

Would you like me to make this README auto-fill-ready with placeholders for the **contract address, transaction hash, and screenshot link**, so participants can just fill them in before submission?

