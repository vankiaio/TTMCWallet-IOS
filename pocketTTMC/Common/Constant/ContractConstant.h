//
//  ContractConstant.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/26.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#ifndef ContractConstant_h
#define ContractConstant_h



/**
 SymbolName
 */
#define SymbolName_TTMC @"TTMC"
#define SymbolName_OCT @"OCT"
#define SymbolName_CET @"CET"

/**
 SmartContractName
 */
#define ContractName_TTMCIOTOKEN @"ttmcio.token"
#define ContractName_TTMCIO @"ttmcio"
#define ContractName_OCTOTHEMOON @"octtothemoon"
#define ContractName_HELLOWORLDGO @"helloworldgo"
#define ContractName_OCASKANS @"ocaskans"
#define ContractName_TTMCIOCHAINCE @"ttmciochaince"


/**
 SmartContractAction
 */
#define ContractAction_TRANSFER @"transfer"
#define ContractAction_UNDELEGATEBW @"undelegatebw"
#define ContractAction_DELEGATEBW @"delegatebw"
#define ContractAction_VOTEPRODUCER @"voteproducer"
#define ContractAction_BUYRAM @"buyram"
#define ContractAction_SELLRAM @"sellram"
#define ContractAction_APPROVE @"approve"
#define ContractAction_ASK @"ask"
#define ContractAction_ANSWER @"answer"
#define ContractAction_UPDATEAUTH @"updateauth"

//投票前需要将自己注册到投票系统
#define ContractAction_REGPROXY @"regproxy"


#define RedPacketReciever @"ttmcredpacket"
#define RedPacketSpecialAccount_TTMCIO @"ttmcio"


#endif /* ContractConstant_h */
