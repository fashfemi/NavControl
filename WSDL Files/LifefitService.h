#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import ".h"
#import "LifefitService.h"
#import "tns1.h"

@class LifefitBinding;
@interface LifefitService : NSObject {
	
}
+ (LifefitBinding *)LifefitBinding;
@end
@class LifefitBindingResponse;
@class LifefitBindingOperation;
@protocol LifefitBindingResponseDelegate <NSObject>
- (void) operation:(LifefitBindingOperation *)operation completedWithResponse:(LifefitBindingResponse *)response;
@end
@interface LifefitBinding : NSObject <LifefitBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(LifefitBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (LifefitBindingResponse *)GetPolicyDataUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest ;
- (void)GetPolicyDataAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)PayPolicyUsingPolicyRequest:(tns1_PolicyPaymentRequest *)aPolicyRequest ;
- (void)PayPolicyAsyncUsingPolicyRequest:(tns1_PolicyPaymentRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)ListPoliciesUsingPolicyRequest:(tns1_PolicyListRequest *)aPolicyRequest ;
- (void)ListPoliciesAsyncUsingPolicyRequest:(tns1_PolicyListRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)ListClientsUsingClientRequest:(tns1_ClientListRequest *)aClientRequest ;
- (void)ListClientsAsyncUsingClientRequest:(tns1_ClientListRequest *)aClientRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)UpdateClientReferenceUsingClientRequest:(tns1_ClientReferenceUpdate *)aClientRequest ;
- (void)UpdateClientReferenceAsyncUsingClientRequest:(tns1_ClientReferenceUpdate *)aClientRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)GetClientSarUsingClientRequest:(tns1_ClientDataRequest *)aClientRequest ;
- (void)GetClientSarAsyncUsingClientRequest:(tns1_ClientDataRequest *)aClientRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)GetPolicyAccountingUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest ;
- (void)GetPolicyAccountingAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)GetPremiumAccountingUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest ;
- (void)GetPremiumAccountingAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)UpdateClientUsingClientUpdate:(tns1_ClientUpdateRequest *)aClientUpdate ;
- (void)UpdateClientAsyncUsingClientUpdate:(tns1_ClientUpdateRequest *)aClientUpdate  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)UpdateAgentUsingAgentUpdate:(tns1_AgentUpdateRequest *)aAgentUpdate ;
- (void)UpdateAgentAsyncUsingAgentUpdate:(tns1_AgentUpdateRequest *)aAgentUpdate  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)ReversePaymentByReceiptNoUsingPolicyRequest:(tns1_PaymentReversalByReceiptNoRequest *)aPolicyRequest ;
- (void)ReversePaymentByReceiptNoAsyncUsingPolicyRequest:(tns1_PaymentReversalByReceiptNoRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)GetPolicyLoansUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest ;
- (void)GetPolicyLoansAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)GetInvoiceDataUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest ;
- (void)GetInvoiceDataAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
- (LifefitBindingResponse *)CalculateQuoteUsingQuoteData:(tns1_QuoteDataRequest *)aQuoteData ;
- (void)CalculateQuoteAsyncUsingQuoteData:(tns1_QuoteDataRequest *)aQuoteData  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate;
@end
@interface LifefitBindingOperation : NSOperation {
	LifefitBinding *binding;
	LifefitBindingResponse *response;
	id<LifefitBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) LifefitBinding *binding;
@property (readonly) LifefitBindingResponse *response;
@property (nonatomic, assign) id<LifefitBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate;
@end
@interface LifefitBinding_GetPolicyData : LifefitBindingOperation {
	tns1_PolicyDataRequest * PolicyRequest;
}
@property (retain) tns1_PolicyDataRequest * PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
;
@end
@interface LifefitBinding_PayPolicy : LifefitBindingOperation {
	tns1_PolicyPaymentRequest * PolicyRequest;
}
@property (retain) tns1_PolicyPaymentRequest * PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	PolicyRequest:(tns1_PolicyPaymentRequest *)aPolicyRequest
;
@end
@interface LifefitBinding_ListPolicies : LifefitBindingOperation {
	tns1_PolicyListRequest * PolicyRequest;
}
@property (retain) tns1_PolicyListRequest * PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	PolicyRequest:(tns1_PolicyListRequest *)aPolicyRequest
;
@end
@interface LifefitBinding_ListClients : LifefitBindingOperation {
	tns1_ClientListRequest * ClientRequest;
}
@property (retain) tns1_ClientListRequest * ClientRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	ClientRequest:(tns1_ClientListRequest *)aClientRequest
;
@end
@interface LifefitBinding_UpdateClientReference : LifefitBindingOperation {
	tns1_ClientReferenceUpdate * ClientRequest;
}
@property (retain) tns1_ClientReferenceUpdate * ClientRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	ClientRequest:(tns1_ClientReferenceUpdate *)aClientRequest
;
@end
@interface LifefitBinding_GetClientSar : LifefitBindingOperation {
	tns1_ClientDataRequest * ClientRequest;
}
@property (retain) tns1_ClientDataRequest * ClientRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	ClientRequest:(tns1_ClientDataRequest *)aClientRequest
;
@end
@interface LifefitBinding_GetPolicyAccounting : LifefitBindingOperation {
	tns1_PolicyDataRequest * PolicyRequest;
}
@property (retain) tns1_PolicyDataRequest * PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
;
@end
@interface LifefitBinding_GetPremiumAccounting : LifefitBindingOperation {
	tns1_PolicyDataRequest * PolicyRequest;
}
@property (retain) tns1_PolicyDataRequest * PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
;
@end
@interface LifefitBinding_UpdateClient : LifefitBindingOperation {
	tns1_ClientUpdateRequest * ClientUpdate;
}
@property (retain) tns1_ClientUpdateRequest * ClientUpdate;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	ClientUpdate:(tns1_ClientUpdateRequest *)aClientUpdate
;
@end
@interface LifefitBinding_UpdateAgent : LifefitBindingOperation {
	tns1_AgentUpdateRequest * AgentUpdate;
}
@property (retain) tns1_AgentUpdateRequest * AgentUpdate;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	AgentUpdate:(tns1_AgentUpdateRequest *)aAgentUpdate
;
@end
@interface LifefitBinding_ReversePaymentByReceiptNo : LifefitBindingOperation {
	tns1_PaymentReversalByReceiptNoRequest * PolicyRequest;
}
@property (retain) tns1_PaymentReversalByReceiptNoRequest * PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	PolicyRequest:(tns1_PaymentReversalByReceiptNoRequest *)aPolicyRequest
;
@end
@interface LifefitBinding_GetPolicyLoans : LifefitBindingOperation {
	tns1_PolicyDataRequest * PolicyRequest;
}
@property (retain) tns1_PolicyDataRequest * PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
;
@end
@interface LifefitBinding_GetInvoiceData : LifefitBindingOperation {
	tns1_PolicyDataRequest * PolicyRequest;
}
@property (retain) tns1_PolicyDataRequest * PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
;
@end
@interface LifefitBinding_CalculateQuote : LifefitBindingOperation {
	tns1_QuoteDataRequest * QuoteData;
}
@property (retain) tns1_QuoteDataRequest * QuoteData;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
	QuoteData:(tns1_QuoteDataRequest *)aQuoteData
;
@end
@interface LifefitBinding_envelope : NSObject {
}
+ (LifefitBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface LifefitBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
