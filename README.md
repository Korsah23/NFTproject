

##CryptoPoops Smart Contract
The CryptoPoops smart contract is a Non-Fungible Token (NFT) contract that allows users to create and manage unique tokens representing CryptoPoops. Here's a brief overview of the contract and its functionalities:

Total Supply: Tracks the total supply of CryptoPoops tokens.
Events: Emits events for contract initialization, withdrawal, and deposit of tokens.
NFT Resource: Defines the structure of a CryptoPoops token, including its ID, name, favorite food, and lucky number.
Collection Resource: Manages the collection of CryptoPoops tokens, allowing users to deposit, withdraw, and borrow tokens.
Minter Resource: Facilitates the creation of new CryptoPoops tokens.


#Transactions
1. Create Collection
Purpose: Initializes a new collection for storing CryptoPoops tokens.
Prepare: Creates an empty collection and links it to a public reference.
Execute: Logs a message confirming the creation of the collection.

3. Mint NFT
Purpose: Mints a new CryptoPoops token and adds it to the recipient's collection.
Prepare: Borrows the Minter resource and the recipient's collection reference.
Execute: Logs a message confirming the addition of the new token to the collection.

#Scripts
1. Get Collection IDs
Purpose: Retrieves the IDs of CryptoPoops tokens stored in a user's collection.
Functionality: Retrieves the public collection reference and returns the IDs of the tokens.
2. Get NFT Metadata
Purpose: Retrieves metadata (name, favorite food, lucky number) of a specific CryptoPoops token.
Functionality: Retrieves the public collection reference, borrows an authorized reference to the token, and logs its metadata.


#Usage
Initialize the contract and create a collection.
Mint new CryptoPoops tokens and add them to users' collections.
Use scripts to retrieve collection IDs and token metadata.
