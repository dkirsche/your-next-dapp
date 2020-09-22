pragma solidity >=0.6.0 <0.7.0;

import "@nomiclabs/buidler/console.sol";

contract YourContract {

  event SetPurpose(address sender, string purpose);

  string public purpose = "🛠 Programming Unstoppable Money";
  uint8 public count = 1;
  function dec() public {
    count = count - 1;
  }
  function setPurpose(string memory newPurpose) public {
    purpose = newPurpose;
    console.log(msg.sender,"set purpose to",purpose);
    emit SetPurpose(msg.sender, purpose);
  }

}
