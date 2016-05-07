### A smart-contract for monthly allowance 

To deploy your monthly allowance contract, use the official <a href="https://github.com/ethereum/mist/releases">ethereum-wallet</a>.

<img src="http://i.imgur.com/O7DgN8i.png" align="center">

Copy the code from <a href="https://github.com/b2xL/monthlyAllowance.sol/blob/master/monthlyAllowance.sol">monthlyAllowance.sol</a> 
and paste it into *ethereum-wallet*. Set your long-term storage address as _owner_, and your mobile wallet as _beneficiary_.

<img src="http://i.imgur.com/5V1wUNs.png" align="center">

Click **deploy** and type your password.

<img src="http://i.imgur.com/KvM9Wer.png" align="center">


It will take a few seconds for other nodes to mine your contract. You can watch as it’s uploaded to the **world computer**.

<img src="http://i.imgur.com/QNrQkB0.png" align="center">

You have to top up your contract with enough ether to cover your allowance for as long as you want to use it. We’ll send 600 ETH to this contract.

<img src="http://i.imgur.com/CdMJrrK.png" align="center">

You have now set up a fund for your monthly allowance :) You can invoke the **payOut()** function once every 28 days, and when you get home from your trip, just close down the contract by invoking **returnFunds()** from your long-term storage private key.

**returnFunds()** executes the <a href="https://medium.com/r/?url=http%3A%2F%2Fethereum.stackexchange.com%2Fa%2F347%2F1807">suicide opcode</a> that clears all of the contract’s data, and sends all remaining funds to the account that was specified, in this case _suicide(owner)_.

<img src="http://i.imgur.com/gKLgrHz.png" align="center">

As always, invoked functions take a few seconds to be mined, and you can watch as it runs on the nodes of the **ethereum state-machine**.

<img src="http://i.imgur.com/doiN4ej.png" align="center">

### Donations: 0xA4681249A968a3Da0343321704550433f75DBF6c (ETH)