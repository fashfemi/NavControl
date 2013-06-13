#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class tns1_PolicyDataRequest;
@class tns1_LoginData;
@class tns1_PolicyListRequest;
@class tns1_PolicyPaymentRequest;
@class tns1_PaymentReversalByReceiptNoRequest;
@class tns1_ClientListRequest;
@class tns1_ClientReferenceUpdate;
@class tns1_ClientDataRequest;
@class tns1_ProcessResponse;
@class tns1_RequestResult;
@class tns1_PolicyDataResponse;
@class tns1_Client;
@class tns1_Agent;
@class tns1_PolicyFund;
@class tns1_PolicyListResponse;
@class tns1_ClientListResponse;
@class tns1_ClientSarResponse;
@class tns1_PolicyAccountingResponse;
@class tns1_PolicyTransaction;
@class tns1_ClientUpdateRequest;
@class tns1_ClientData;
@class tns1_AgentUpdateRequest;
@class tns1_AgentData;
@class tns1_PolicyLoansResponse;
@class tns1_LoanData;
@class tns1_InvoiceDataResponse;
@class tns1_QuoteDataRequest;
@class tns1_QuoteCoverageData;
@class tns1_QuoteDataResponse;
@class tns1_QuoteData;
@class tns1_Address;
@class tns1_AccountingEntry;
@interface tns1_LoginData : NSObject {
	
/* elements */
	NSString * UserId;
	NSString * Password;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_LoginData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * UserId;
@property (retain) NSString * Password;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyDataRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * PolicyNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyDataRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * PolicyNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyListRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * ClientNo;
	NSString * ClientName;
	NSMutableArray *StatusCode;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyListRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * ClientNo;
@property (retain) NSString * ClientName;
- (void)addStatusCode:(NSString *)toAdd;
@property (readonly) NSMutableArray * StatusCode;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyPaymentRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * PolicyNo;
	NSNumber * PaymentAmount;
	NSString * PaymentType;
	NSString * PaymentCurrency;
	NSString * ReceiptNo;
	NSString * ChequeNo;
	NSString * BankCode;
	NSDate * EffectiveDate;
	NSString * LoanId;
	NSNumber * VatAmount;
	NSNumber * TaxAmount;
	NSNumber * CommissionAmount;
	NSNumber * CoinsFeeAmount;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyPaymentRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * PolicyNo;
@property (retain) NSNumber * PaymentAmount;
@property (retain) NSString * PaymentType;
@property (retain) NSString * PaymentCurrency;
@property (retain) NSString * ReceiptNo;
@property (retain) NSString * ChequeNo;
@property (retain) NSString * BankCode;
@property (retain) NSDate * EffectiveDate;
@property (retain) NSString * LoanId;
@property (retain) NSNumber * VatAmount;
@property (retain) NSNumber * TaxAmount;
@property (retain) NSNumber * CommissionAmount;
@property (retain) NSNumber * CoinsFeeAmount;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PaymentReversalByReceiptNoRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * ReceiptNo;
	NSDate * EffectiveDate;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PaymentReversalByReceiptNoRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * ReceiptNo;
@property (retain) NSDate * EffectiveDate;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ClientListRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * ClientName;
	NSString * ExternalRef;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ClientListRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * ClientName;
@property (retain) NSString * ExternalRef;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ClientReferenceUpdate : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * ClientNo;
	NSString * ExternalRef;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ClientReferenceUpdate *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * ClientNo;
@property (retain) NSString * ExternalRef;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ClientDataRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * ClientNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ClientDataRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * ClientNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_RequestResult : NSObject {
	
/* elements */
	USBoolean * Result;
	NSString * ErrorMessage;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_RequestResult *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) USBoolean * Result;
@property (retain) NSString * ErrorMessage;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ProcessResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ProcessResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_Address : NSObject {
	
/* elements */
	NSString * Country;
	NSString * County;
	NSString * City;
	NSString * Text;
	NSString * PostCode;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_Address *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * Country;
@property (retain) NSString * County;
@property (retain) NSString * City;
@property (retain) NSString * Text;
@property (retain) NSString * PostCode;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_Client : NSObject {
	
/* elements */
	NSString * ClientNo;
	NSString * Name;
	NSDate * Birthdate;
	tns1_Address * Address;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_Client *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * ClientNo;
@property (retain) NSString * Name;
@property (retain) NSDate * Birthdate;
@property (retain) tns1_Address * Address;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_Agent : NSObject {
	
/* elements */
	NSString * AgentNo;
	NSString * AgentName;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_Agent *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * AgentNo;
@property (retain) NSString * AgentName;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyFund : NSObject {
	
/* elements */
	NSString * FundCode;
	NSString * FundName;
	NSNumber * Units;
	NSNumber * Price;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyFund *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * FundCode;
@property (retain) NSString * FundName;
@property (retain) NSNumber * Units;
@property (retain) NSNumber * Price;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyDataResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
	tns1_Client * Owner;
	NSString * ProductCode;
	NSString * ProductName;
	NSDate * IssueDate;
	NSDate * MaturityDate;
	NSNumber * PremiumAmount;
	NSString * PremiumFrequency;
	NSNumber * PremiumDue;
	NSDate * NextPremiumDate;
	tns1_Agent * Agent;
	NSString * BranchCode;
	NSMutableArray *Fund;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyDataResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
@property (retain) tns1_Client * Owner;
@property (retain) NSString * ProductCode;
@property (retain) NSString * ProductName;
@property (retain) NSDate * IssueDate;
@property (retain) NSDate * MaturityDate;
@property (retain) NSNumber * PremiumAmount;
@property (retain) NSString * PremiumFrequency;
@property (retain) NSNumber * PremiumDue;
@property (retain) NSDate * NextPremiumDate;
@property (retain) tns1_Agent * Agent;
@property (retain) NSString * BranchCode;
- (void)addFund:(tns1_PolicyFund *)toAdd;
@property (readonly) NSMutableArray * Fund;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyListResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
	NSMutableArray *PolicyNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyListResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
- (void)addPolicyNo:(NSString *)toAdd;
@property (readonly) NSMutableArray * PolicyNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ClientListResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
	NSMutableArray *ClientNo;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ClientListResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
- (void)addClientNo:(NSString *)toAdd;
@property (readonly) NSMutableArray * ClientNo;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ClientSarResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
	NSNumber * TotalSar;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ClientSarResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
@property (retain) NSNumber * TotalSar;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_AccountingEntry : NSObject {
	
/* elements */
	NSString * Pseudo;
	NSNumber * Amount;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_AccountingEntry *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * Pseudo;
@property (retain) NSNumber * Amount;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyTransaction : NSObject {
	
/* elements */
	NSNumber * TransNo;
	NSDate * EffectiveDate;
	NSNumber * Cash;
	NSNumber * Premium;
	NSNumber * Loan;
	NSNumber * Suspense;
	NSDate * PaidToDate;
	NSString * Description;
	NSMutableArray *AccountingEntry;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyTransaction *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * TransNo;
@property (retain) NSDate * EffectiveDate;
@property (retain) NSNumber * Cash;
@property (retain) NSNumber * Premium;
@property (retain) NSNumber * Loan;
@property (retain) NSNumber * Suspense;
@property (retain) NSDate * PaidToDate;
@property (retain) NSString * Description;
- (void)addAccountingEntry:(tns1_AccountingEntry *)toAdd;
@property (readonly) NSMutableArray * AccountingEntry;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyAccountingResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
	NSMutableArray *PolicyTransaction;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyAccountingResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
- (void)addPolicyTransaction:(tns1_PolicyTransaction *)toAdd;
@property (readonly) NSMutableArray * PolicyTransaction;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ClientData : NSObject {
	
/* elements */
	USBoolean * IsCompany;
	NSString * LastName;
	NSString * FirstName;
	NSString * MiddleName;
	NSString * NatInsNo;
	NSString * OccupationCode;
	NSString * Occupation;
	NSString * Email;
	NSDate * BirthDate;
	NSString * Gender;
	NSString * EmploymentStatus;
	NSString * EmployerName;
	NSString * Title;
	NSString * Salutation;
	NSString * Nationality;
	NSString * HomePhoneNo;
	NSString * MobilePhoneNo;
	NSString * BusinessPhoneNo;
	NSString * FaxNo;
	NSString * IdNumber;
	NSDate * IdIssueDate;
	NSString * IdIssuePlace;
	NSDate * IdExpiryDate;
	NSString * TaxNumber;
	tns1_Address * HomeAddress;
	tns1_Address * MailAddress;
	tns1_Address * EmployerAddress;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ClientData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) USBoolean * IsCompany;
@property (retain) NSString * LastName;
@property (retain) NSString * FirstName;
@property (retain) NSString * MiddleName;
@property (retain) NSString * NatInsNo;
@property (retain) NSString * OccupationCode;
@property (retain) NSString * Occupation;
@property (retain) NSString * Email;
@property (retain) NSDate * BirthDate;
@property (retain) NSString * Gender;
@property (retain) NSString * EmploymentStatus;
@property (retain) NSString * EmployerName;
@property (retain) NSString * Title;
@property (retain) NSString * Salutation;
@property (retain) NSString * Nationality;
@property (retain) NSString * HomePhoneNo;
@property (retain) NSString * MobilePhoneNo;
@property (retain) NSString * BusinessPhoneNo;
@property (retain) NSString * FaxNo;
@property (retain) NSString * IdNumber;
@property (retain) NSDate * IdIssueDate;
@property (retain) NSString * IdIssuePlace;
@property (retain) NSDate * IdExpiryDate;
@property (retain) NSString * TaxNumber;
@property (retain) tns1_Address * HomeAddress;
@property (retain) tns1_Address * MailAddress;
@property (retain) tns1_Address * EmployerAddress;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_ClientUpdateRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * ClientNo;
	tns1_ClientData * Client;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_ClientUpdateRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * ClientNo;
@property (retain) tns1_ClientData * Client;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_AgentData : NSObject {
	
/* elements */
	NSString * ClientNo;
	USBoolean * IsIndividual;
	NSString * Name;
	NSString * FirstName;
	NSString * MiddleName;
	NSDate * BirthDate;
	NSString * Email;
	NSString * PhoneNo;
	NSString * FaxNo;
	tns1_Address * Address;
	NSString * Status;
	NSDate * StatusDate;
	NSString * SalesContactNo;
	NSMutableArray *BranchCode;
	NSString * AgentType;
	NSDate * AgentTypeDate;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_AgentData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * ClientNo;
@property (retain) USBoolean * IsIndividual;
@property (retain) NSString * Name;
@property (retain) NSString * FirstName;
@property (retain) NSString * MiddleName;
@property (retain) NSDate * BirthDate;
@property (retain) NSString * Email;
@property (retain) NSString * PhoneNo;
@property (retain) NSString * FaxNo;
@property (retain) tns1_Address * Address;
@property (retain) NSString * Status;
@property (retain) NSDate * StatusDate;
@property (retain) NSString * SalesContactNo;
- (void)addBranchCode:(NSString *)toAdd;
@property (readonly) NSMutableArray * BranchCode;
@property (retain) NSString * AgentType;
@property (retain) NSDate * AgentTypeDate;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_AgentUpdateRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * AgentNo;
	tns1_AgentData * Agent;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_AgentUpdateRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * AgentNo;
@property (retain) tns1_AgentData * Agent;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_LoanData : NSObject {
	
/* elements */
	NSString * LoanId;
	NSString * PolicyNo;
	NSNumber * LoanAmount;
	NSNumber * LoanBalance;
	NSDate * StartDate;
	NSNumber * Term;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_LoanData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * LoanId;
@property (retain) NSString * PolicyNo;
@property (retain) NSNumber * LoanAmount;
@property (retain) NSNumber * LoanBalance;
@property (retain) NSDate * StartDate;
@property (retain) NSNumber * Term;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_PolicyLoansResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
	NSMutableArray *LoanData;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_PolicyLoansResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
- (void)addLoanData:(tns1_LoanData *)toAdd;
@property (readonly) NSMutableArray * LoanData;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_InvoiceDataResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
	NSString * PolicyNumber;
	NSString * GroupNumber;
	NSString * GroupName;
	NSString * LastInvoiceNumber;
	NSDate * LastInvoiceDate;
	NSNumber * LastInvoiceAmount;
	NSNumber * SuspenseAmount;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_InvoiceDataResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
@property (retain) NSString * PolicyNumber;
@property (retain) NSString * GroupNumber;
@property (retain) NSString * GroupName;
@property (retain) NSString * LastInvoiceNumber;
@property (retain) NSDate * LastInvoiceDate;
@property (retain) NSNumber * LastInvoiceAmount;
@property (retain) NSNumber * SuspenseAmount;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_QuoteCoverageData : NSObject {
	
/* elements */
	NSString * ProductCode;
	NSNumber * PremiumAmount;
	NSNumber * FaceAmount;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_QuoteCoverageData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * ProductCode;
@property (retain) NSNumber * PremiumAmount;
@property (retain) NSNumber * FaceAmount;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_QuoteDataRequest : NSObject {
	
/* elements */
	tns1_LoginData * Login;
	NSString * AgentNo;
	tns1_ClientData * Owner;
	NSString * PremiumFrequency;
	NSNumber * MaturityYears;
	NSMutableArray *CoverageData;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_QuoteDataRequest *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_LoginData * Login;
@property (retain) NSString * AgentNo;
@property (retain) tns1_ClientData * Owner;
@property (retain) NSString * PremiumFrequency;
@property (retain) NSNumber * MaturityYears;
- (void)addCoverageData:(tns1_QuoteCoverageData *)toAdd;
@property (readonly) NSMutableArray * CoverageData;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_QuoteData : NSObject {
	
/* elements */
	NSString * Name;
	NSMutableArray *Value;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_QuoteData *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * Name;
- (void)addValue:(NSString *)toAdd;
@property (readonly) NSMutableArray * Value;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface tns1_QuoteDataResponse : NSObject {
	
/* elements */
	tns1_RequestResult * RequestResult;
	NSString * QuoteNo;
	NSMutableArray *QuoteData;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (tns1_QuoteDataResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) tns1_RequestResult * RequestResult;
@property (retain) NSString * QuoteNo;
- (void)addQuoteData:(tns1_QuoteData *)toAdd;
@property (readonly) NSMutableArray * QuoteData;
/* attributes */
- (NSDictionary *)attributes;
@end
