import CryptoPoops from 0x05
import NonFungibleToken from 0x05

transaction {

  prepare(acct: AuthAccount) {
   acct.save(<- CryptoPoops.createEmptyCollection(), to: /storage/Collection)
   acct.link<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>(/public/Collection, target: /storage/Collection)
  }

 execute {
   log("a cryptoPoop NFT collection has been stored created and stored")
   }
}
