# Canary

Obs: Canary uses [Diamond proxy pattern](https://eips.ethereum.org/EIPS/eip-2535)

## Problem 

Imagine you are a singer and you have turned your songs into NFT and you want to sell the copyrights of that song or you are a game designer and in your game the items are NFTs and you want the players to be able to rent the rights to use that item to another player or you have that one piece of NFT art that everybody wants to use but nobody wants to pay the full price for. It would be really nice to make a passive income with that right.

## Solution

Canary is a rights protocol, with canary you can sell the rights to use your NFT to other people just by setting a small daily fee, max number of right hoders and max holding time. "But why would anyone want to buy rights to an NFT?" imagine you are a game developer and the items in that game are NFTs, it would be great if players could sell the rights of their items to other players temporarily or you want to use that cool design in your profile picture on social networks, so instead of paying full price for the NFT, why not just pay a small amount for temporary rights? this protocol could also have a big impact on the music copyright industry and many other applications. "but what happens to the owner of the NFT?" The owner of the NFT will receive the daily rate he has set, i.e. the owner of the NFT will earn from the daily rates and from the appreciation of his item because the more an item sells, the more it will be desired by other collectors. The NFT owner can also define a total number of rights holders and thus create scarcity for the rights to his NFT and of course we will support a parallel rights market where rights holders will be able to sell their rights to other collectors. that way the NFT owners will promote our platform for free because they will earn from the valuation and royalty fees on their NFT.


## How it works?

### The NFT Owner: 
Deposits his Token in the Canary protocol defining the daily price of the right on that NFT, the maximum amount that any holder can hold an NFT right and the maximum number of holders that the NFT can have (to create scarcity).

### Canary Protcol:
Hold the NFT and generate an amount of rights token based on the maximum number of holders that the NFT can have, selling each rights token with a value based on the daily price that the NFT owner has set and the amount of days the right holder has set (Cannot exceed the maximum number of days that the NFT owner has set).

### Right Holder:
Has a rights token that can be used as a proof that he has the right to use the data of that NFT for a certain period of time, for that he needs to define the number of days he wants to use the rights token and pay the respective fee.

# Canary Governance Protocol
Canary Governance Protocol is an incentive based protocol in which all those eligible to vote have equal voting power thus preventing only those with more resources from centralizing power within the governance. "But if everyone has the same voting power why would I buy more governance tokens?", because your reward if you make a good decision is based on your voting power. "But who decides what is a good decision?", the market.

## How Canary Governance Protocol Works?

### Proposal Creation
When a proposal is created, the current value of the governance token is stored (the current value is taken from a Oracles network). The voting period lasts for 1 week.

### Proposal Execution
When the proposal is approved there is a delay of 1 week to see the response of the market and only after this period can be executed, the value of the token is checked again, if the governance token has appreciated in value (current value higher than the value at the time the proposal was created) then the decision is considered a good decision and all those who voted in favor get a part of the treasury as a reward for the good decision, otherwise all those who voted against receive part of the treasury as a reward. After proposal execution there is a delay of 2 weeks, it means that only one proposal can be made per month.

### Reward
the reward is based on your voting power and is calculated as follows:
```solidity
uint256 percent = yourVotingPower * 100 / totalPower;
uint256 reward = (treasury * 70 / 100) * percent / 100;
```
where `totalPower` is the sum of voters that vote for the better decision. This means that the greater your voting power, the greater your reward if you make the decision that most pleases the market.

## Run Project
You can run the project just by clicking in the public link [HERE](https://esdras-santos.github.io/canary_moonbeam_webpage/#/) or

1. [Install flutter](https://docs.flutter.dev/get-started/install)

2. Clone this repositore

```shell
git clone https://github.com/esdras-santos/canary_moonbeam
```

3. Inside the repositore type run: 
```shell
flutter run -d web-server
```

4. Now just copy the link on the output  and past it into your chrome browser (in this case `http://localhost:50736`)

![alt text](https://github.com/esdras-santos/canary_metis/blob/main/run.PNG?raw=true)

## Canary addresses

### Main addresses
Diamond Address: [0x55b92Ed41e062706F9d46A31065deB9E8DDDda8F](https://moonbase.moonscan.io/address/0x55b92Ed41e062706F9d46A31065deB9E8DDDda8F)

Canary address: [0x7E16Bb6e5ff809863ECF033Da038Bcb50c34C39d](https://moonbase.moonscan.io/address/0x7E16Bb6e5ff809863ECF033Da038Bcb50c34C39d)

treasury address: [0xDE2F9752aA607f18f2B05CdA72d5b5e7dEe04392](https://moonbase.moonscan.io/address/0xDE2F9752aA607f18f2B05CdA72d5b5e7dEe04392)

### Facet addresses
DiamondCut address: [0x9c520e4561993294744227af6C46a08056667784](https://moonbase.moonscan.io/address/0x9c520e4561993294744227af6C46a08056667784)

DiamondInit address: [0x6F648eB31d176C228289f193292738947b248FC1](https://moonbase.moonscan.io/address/0x6F648eB31d176C228289f193292738947b248FC1)

Diamond Loupe address: [0x5D9efE77aCb9D0DfCfC8aAE134696A5587cc1273](https://moonbase.moonscan.io/address/0x5D9efE77aCb9D0DfCfC8aAE134696A5587cc1273)

Diamond ownership address: [0xAD25D794E88c358C4bE5899d98EB06b1f7080141](https://moonbase.moonscan.io/address/0xAD25D794E88c358C4bE5899d98EB06b1f7080141)


## Canary Governance Addresses
Governance Token (CAT) address: [0xffbaFaFFbd68F00CE7b33A04324aA148B1dBDb28](https://moonbase.moonscan.io/address/0xffbaFaFFbd68F00CE7b33A04324aA148B1dBDb28)

TimeLock address: [0x903B36307A1a063911713EA75D1AaA4Cb6ef484d](https://moonbase.moonscan.io/address/0x903B36307A1a063911713EA75D1AaA4Cb6ef484d)

Governor address: [0x20C287080C0fb7fa8CAD540f7da62b072E5ea4A9](https://moonbase.moonscan.io/address/0x20C287080C0fb7fa8CAD540f7da62b072E5ea4A9)

## Test collection address
Fruit Collection address: [0xf0DE0D55EcCD2a27B281b39036f8FF36dBa1d13b](https://moonbase.moonscan.io/address/0xf0DE0D55EcCD2a27B281b39036f8FF36dBa1d13b)

## Future Roadmap
in the second stage of the Canary when the price of our governance token (CAT) is registered in the price feed we intend to pass the ownership of the Canary protocol to our governance protocol, our governance protocol is an incentive based protocol in which all those eligible to vote have equal voting power thus preventing only those with more resources from centralizing power within the governance. "But if everyone has the same voting power why would I buy more governance tokens?", our incentive system will benefit you if you have more tokens.