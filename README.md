# VotingPoll Contract with Factory Contract

## Description

The `VotingPoll` contract is a Solidity smart contract that facilitates creating and voting in polls. It defines a structure for a poll, allowing users to add new polls, vote on options, and retrieve poll details. Additionally, the project includes a factory contract `VotingPollFactory` responsible for deploying new instances of the `VotingPoll` contract.

## Getting Started

### Prerequisites

Before deploying the contracts, ensure you have the following dependencies installed:

- Node.js
- Hardhat

### Installing

1. Clone this repository to your local machine:

```
git clone https://github.com/your-username/voting-poll.git
```

2. Navigate to the project directory:

```
cd voting-poll
```

3. Install the required npm packages:

```
npm install
```

### Deploying the Contracts

1. Configure your Ethereum wallet provider in the `hardhat.config.js` file.

2. Write your `VotingPoll` contract and `VotingPollFactory` contract in the `contracts` directory or use the provided contracts.

3. Compile the contracts:

```
npx hardhat compile
```

4. Deploy the contracts to the desired Ethereum network:

```
npx hardhat run scripts/deploy.js --network <network-name>
```

Replace `<network-name>` with the desired network (e.g., `rinkeby`, `mainnet`).

## Usage

Once the contracts are deployed, users can interact with them through the following actions:

### VotingPoll Contract

- **Add Poll:** Users can add new polls by providing a name and description.
- **Vote:** Voters can cast their votes for a specific poll and option.
- **Get Poll Count:** Retrieve the total number of polls.
- **Get Poll Details:** Retrieve details of a specific poll by index.

### VotingPollFactory Contract

- **Deploy New VotingPoll:** Users can deploy a new instance of the `VotingPoll` contract through the factory.

## Help

If you encounter any issues or have questions about using the VotingPoll contracts, you can refer to the Solidity documentation, Hardhat documentation, or seek assistance from the Ethereum development community.

## Authors

- Contact: [emmanuelomemgboji@gmail.com](mailto:emmanuelomemgboji@gmail.com)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.