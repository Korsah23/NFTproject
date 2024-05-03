import CryptoPoops from 0x05
import NonFungibleToken from 0x05

pub fun main(address: Address): [UInt64] {
  let publicReference = getAccount(address).getCapability(/public/Collection)
              .borrow<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>()
              ?? panic("This address does not contain a Collection.")
  
  return publicReference.getIDs()
}
