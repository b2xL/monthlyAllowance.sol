contract monthlyAllowance {

address owner;
address beneficiary;

uint nextMonth;

uint allowance;

function monthlyAllowance(){
owner; //owner = air-gapped computer's wallet
beneficiary; //beneficiary = address that receives allowance
nextMonth = block.number + 28 days;
allowance = 20 ether;
}

function payOut() { // can be invoked every 28 days
if(block.number < nextMonth) throw;
beneficiary.send(allowance);
nextMonth += 28 days;
}

function returnFunds(){ // return funds when contract no longer needed
    if(msg.sender != owner) throw;
    suicide(owner);
}

}