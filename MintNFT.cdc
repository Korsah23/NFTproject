import CryptoPoops from 0x05
import NonFungibleToken from 0x05

transaction(recipient: Address,name: String, favouriteFood: String, luckyNumber: Int) {

 prepare(acct: AuthAccount) {
     let nftMinter = acct.borrow<&CryptoPoops.Minter>(from: /storage/Minter)!
    
     let publicRef = getAccount(recipient).getCapability(/public/Collection)
                            .borrow<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>()
                            ?? panic("This account does not contain a collection") 

    publicRef.deposit(token: <- nftMinter.createNFT(name: name, favouriteFood: favouriteFood, luckyNumber: luckyNumber))
    }                        
 
 execute {
   log("a newly minted NFT has been added to the Collection")
   }
}
