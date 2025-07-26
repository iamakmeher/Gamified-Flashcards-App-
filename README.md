# 🎮 Gamified Flashcards App – Token Reward System

## 📌 Project Title:
**Gamified Flashcards App – Earn tokens for each correct set**

## 📖 Description:
This Clarity smart contract powers a blockchain-based flashcard quiz application. Users earn fungible tokens (`flash-token`) every time they complete a correct set of flashcards. The app rewards learning by incentivizing users with on-chain assets.

## 🌟 Project Vision:
To make education fun and rewarding through gamification, leveraging blockchain technology to distribute provable, non-inflationary incentives.

## 🚀 Future Scope:
- Add NFT-based badges for milestones.
- Add leaderboard and point-sharing system.
- Enable staking of earned tokens for benefits.
- Integration with DAO for community-driven quiz creation.

## 📜 Contract Address:
> To be deployed. Replace after deployment using:
> ```
> clarinet deploy flashcards-token
> ```

---

## ⚙️ Functions

### 1. `reward-user (user principal) (points uint)`
- Only callable by contract itself.
- Mints tokens to the specified user if answers are correct.

### 2. `get-earned (user principal)`
- Returns the total tokens a user has earned from correct flashcard sets.

---

## 🧪 How to Test (Using Clarinet)

1. **Install Clarinet**:
STJ6PV39HCT2WJYCA7ARP6YA84T2G2PRX3JNVMPA.Gamified
<img width="1881" height="851" alt="image" src="https://github.com/user-attachments/assets/386071d3-3d18-43fe-8bef-8900d8aee492" />

   [Download from https://docs.hiro.so/clarinet](https://docs.hiro.so/clarinet)

3. **Run Tests**:
   ```bash
   clarinet test
