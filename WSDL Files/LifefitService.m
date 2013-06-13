#import "LifefitService.h"
#import <libxml/xmlstring.h>
#if TARGET_OS_IPHONE
#import <CFNetwork/CFNetwork.h>
#endif
@implementation LifefitService
+ (void)initialize
{
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"" forKey:@"http://www.w3.org/2001/XMLSchema"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"LifefitService" forKey:@"LIFEfitData"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"tns1" forKey:@"LIFEfitData/types"];
}
+ (LifefitBinding *)LifefitBinding
{
	return [[[LifefitBinding alloc] initWithAddress:@"http://www.webqa.fitltd.com/lwyapp/lifefit/soap"] autorelease];
}
@end

@implementation LifefitBinding
@synthesize address;
@synthesize defaultTimeout;
@synthesize logXMLInOut;
@synthesize cookies;
@synthesize authUsername;
@synthesize authPassword;
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		defaultTimeout = 10;//seconds
		logXMLInOut = NO;
		synchronousOperationComplete = NO;
	}
	
	return self;
}


- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (LifefitBindingResponse *)performSynchronousOperation:(LifefitBindingOperation *)operation
{
	synchronousOperationComplete = NO;
	[operation start];
	
	// Now wait for response
	NSRunLoop *theRL = [NSRunLoop currentRunLoop];
	
	while (!synchronousOperationComplete && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
	return operation.response;
}
- (void)performAsynchronousOperation:(LifefitBindingOperation *)operation
{
	[operation start];
}
- (void) operation:(LifefitBindingOperation *)operation completedWithResponse:(LifefitBindingResponse *)response
{
	synchronousOperationComplete = YES;
}
- (LifefitBindingResponse *)GetPolicyDataUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_GetPolicyData*)[LifefitBinding_GetPolicyData alloc] initWithBinding:self delegate:self
																							PolicyRequest:aPolicyRequest
																							] autorelease]];
}
- (void)GetPolicyDataAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_GetPolicyData*)[LifefitBinding_GetPolicyData alloc] initWithBinding:self delegate:responseDelegate
																							 PolicyRequest:aPolicyRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)PayPolicyUsingPolicyRequest:(tns1_PolicyPaymentRequest *)aPolicyRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_PayPolicy*)[LifefitBinding_PayPolicy alloc] initWithBinding:self delegate:self
																							PolicyRequest:aPolicyRequest
																							] autorelease]];
}
- (void)PayPolicyAsyncUsingPolicyRequest:(tns1_PolicyPaymentRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_PayPolicy*)[LifefitBinding_PayPolicy alloc] initWithBinding:self delegate:responseDelegate
																							 PolicyRequest:aPolicyRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)ListPoliciesUsingPolicyRequest:(tns1_PolicyListRequest *)aPolicyRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_ListPolicies*)[LifefitBinding_ListPolicies alloc] initWithBinding:self delegate:self
																							PolicyRequest:aPolicyRequest
																							] autorelease]];
}
- (void)ListPoliciesAsyncUsingPolicyRequest:(tns1_PolicyListRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_ListPolicies*)[LifefitBinding_ListPolicies alloc] initWithBinding:self delegate:responseDelegate
																							 PolicyRequest:aPolicyRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)ListClientsUsingClientRequest:(tns1_ClientListRequest *)aClientRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_ListClients*)[LifefitBinding_ListClients alloc] initWithBinding:self delegate:self
																							ClientRequest:aClientRequest
																							] autorelease]];
}
- (void)ListClientsAsyncUsingClientRequest:(tns1_ClientListRequest *)aClientRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_ListClients*)[LifefitBinding_ListClients alloc] initWithBinding:self delegate:responseDelegate
																							 ClientRequest:aClientRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)UpdateClientReferenceUsingClientRequest:(tns1_ClientReferenceUpdate *)aClientRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_UpdateClientReference*)[LifefitBinding_UpdateClientReference alloc] initWithBinding:self delegate:self
																							ClientRequest:aClientRequest
																							] autorelease]];
}
- (void)UpdateClientReferenceAsyncUsingClientRequest:(tns1_ClientReferenceUpdate *)aClientRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_UpdateClientReference*)[LifefitBinding_UpdateClientReference alloc] initWithBinding:self delegate:responseDelegate
																							 ClientRequest:aClientRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)GetClientSarUsingClientRequest:(tns1_ClientDataRequest *)aClientRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_GetClientSar*)[LifefitBinding_GetClientSar alloc] initWithBinding:self delegate:self
																							ClientRequest:aClientRequest
																							] autorelease]];
}
- (void)GetClientSarAsyncUsingClientRequest:(tns1_ClientDataRequest *)aClientRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_GetClientSar*)[LifefitBinding_GetClientSar alloc] initWithBinding:self delegate:responseDelegate
																							 ClientRequest:aClientRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)GetPolicyAccountingUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_GetPolicyAccounting*)[LifefitBinding_GetPolicyAccounting alloc] initWithBinding:self delegate:self
																							PolicyRequest:aPolicyRequest
																							] autorelease]];
}
- (void)GetPolicyAccountingAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_GetPolicyAccounting*)[LifefitBinding_GetPolicyAccounting alloc] initWithBinding:self delegate:responseDelegate
																							 PolicyRequest:aPolicyRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)GetPremiumAccountingUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_GetPremiumAccounting*)[LifefitBinding_GetPremiumAccounting alloc] initWithBinding:self delegate:self
																							PolicyRequest:aPolicyRequest
																							] autorelease]];
}
- (void)GetPremiumAccountingAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_GetPremiumAccounting*)[LifefitBinding_GetPremiumAccounting alloc] initWithBinding:self delegate:responseDelegate
																							 PolicyRequest:aPolicyRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)UpdateClientUsingClientUpdate:(tns1_ClientUpdateRequest *)aClientUpdate 
{
	return [self performSynchronousOperation:[[(LifefitBinding_UpdateClient*)[LifefitBinding_UpdateClient alloc] initWithBinding:self delegate:self
																							ClientUpdate:aClientUpdate
																							] autorelease]];
}
- (void)UpdateClientAsyncUsingClientUpdate:(tns1_ClientUpdateRequest *)aClientUpdate  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_UpdateClient*)[LifefitBinding_UpdateClient alloc] initWithBinding:self delegate:responseDelegate
																							 ClientUpdate:aClientUpdate
																							 ] autorelease]];
}
- (LifefitBindingResponse *)UpdateAgentUsingAgentUpdate:(tns1_AgentUpdateRequest *)aAgentUpdate 
{
	return [self performSynchronousOperation:[[(LifefitBinding_UpdateAgent*)[LifefitBinding_UpdateAgent alloc] initWithBinding:self delegate:self
																							AgentUpdate:aAgentUpdate
																							] autorelease]];
}
- (void)UpdateAgentAsyncUsingAgentUpdate:(tns1_AgentUpdateRequest *)aAgentUpdate  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_UpdateAgent*)[LifefitBinding_UpdateAgent alloc] initWithBinding:self delegate:responseDelegate
																							 AgentUpdate:aAgentUpdate
																							 ] autorelease]];
}
- (LifefitBindingResponse *)ReversePaymentByReceiptNoUsingPolicyRequest:(tns1_PaymentReversalByReceiptNoRequest *)aPolicyRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_ReversePaymentByReceiptNo*)[LifefitBinding_ReversePaymentByReceiptNo alloc] initWithBinding:self delegate:self
																							PolicyRequest:aPolicyRequest
																							] autorelease]];
}
- (void)ReversePaymentByReceiptNoAsyncUsingPolicyRequest:(tns1_PaymentReversalByReceiptNoRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_ReversePaymentByReceiptNo*)[LifefitBinding_ReversePaymentByReceiptNo alloc] initWithBinding:self delegate:responseDelegate
																							 PolicyRequest:aPolicyRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)GetPolicyLoansUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_GetPolicyLoans*)[LifefitBinding_GetPolicyLoans alloc] initWithBinding:self delegate:self
																							PolicyRequest:aPolicyRequest
																							] autorelease]];
}
- (void)GetPolicyLoansAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_GetPolicyLoans*)[LifefitBinding_GetPolicyLoans alloc] initWithBinding:self delegate:responseDelegate
																							 PolicyRequest:aPolicyRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)GetInvoiceDataUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest 
{
	return [self performSynchronousOperation:[[(LifefitBinding_GetInvoiceData*)[LifefitBinding_GetInvoiceData alloc] initWithBinding:self delegate:self
																							PolicyRequest:aPolicyRequest
																							] autorelease]];
}
- (void)GetInvoiceDataAsyncUsingPolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_GetInvoiceData*)[LifefitBinding_GetInvoiceData alloc] initWithBinding:self delegate:responseDelegate
																							 PolicyRequest:aPolicyRequest
																							 ] autorelease]];
}
- (LifefitBindingResponse *)CalculateQuoteUsingQuoteData:(tns1_QuoteDataRequest *)aQuoteData 
{
	return [self performSynchronousOperation:[[(LifefitBinding_CalculateQuote*)[LifefitBinding_CalculateQuote alloc] initWithBinding:self delegate:self
																							QuoteData:aQuoteData
																							] autorelease]];
}
- (void)CalculateQuoteAsyncUsingQuoteData:(tns1_QuoteDataRequest *)aQuoteData  delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(LifefitBinding_CalculateQuote*)[LifefitBinding_CalculateQuote alloc] initWithBinding:self delegate:responseDelegate
																							 QuoteData:aQuoteData
																							 ] autorelease]];
}
- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(LifefitBindingOperation *)operation
{
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.address 
																												 cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
																										 timeoutInterval:self.defaultTimeout];
	NSData *bodyData = [outputBody dataUsingEncoding:NSUTF8StringEncoding];
	
	if(cookies != nil) {
		[request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies:cookies]];
	}
	[request setValue:@"wsdl2objc" forHTTPHeaderField:@"User-Agent"];
	[request setValue:soapAction forHTTPHeaderField:@"SOAPAction"];
	[request setValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
	[request setValue:[NSString stringWithFormat:@"%u", [bodyData length]] forHTTPHeaderField:@"Content-Length"];
	[request setValue:self.address.host forHTTPHeaderField:@"Host"];
	[request setHTTPMethod: @"POST"];
	// set version 1.1 - how?
	[request setHTTPBody: bodyData];
		
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", [request allHTTPHeaderFields]);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:operation];
	
	operation.urlConnection = connection;
	[connection release];
}
- (void) dealloc
{
	[address release];
	[cookies release];
	[super dealloc];
}
@end
@implementation LifefitBindingOperation
@synthesize binding;
@synthesize response;
@synthesize delegate;
@synthesize responseData;
@synthesize urlConnection;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)aDelegate
{
	if (self = [super init]) {
		self.binding = aBinding;
		response = nil;
		self.delegate = aDelegate;
		self.responseData = nil;
		self.urlConnection = nil;
	}
	
	return self;
}
-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if ([challenge previousFailureCount] == 0) {
		NSURLCredential *newCredential;
		newCredential=[NSURLCredential credentialWithUser:self.binding.authUsername
												 password:self.binding.authPassword
											  persistence:NSURLCredentialPersistenceForSession];
		[[challenge sender] useCredential:newCredential
			   forAuthenticationChallenge:challenge];
	} else {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
		NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Authentication Error" forKey:NSLocalizedDescriptionKey];
		NSError *authError = [NSError errorWithDomain:@"Connection Authentication" code:0 userInfo:userInfo];
		[self connection:connection didFailWithError:authError];
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)urlResponse
{
	NSHTTPURLResponse *httpResponse;
	if ([urlResponse isKindOfClass:[NSHTTPURLResponse class]]) {
		httpResponse = (NSHTTPURLResponse *) urlResponse;
	} else {
		httpResponse = nil;
	}
	
	if(binding.logXMLInOut) {
		NSLog(@"ResponseStatus: %u\n", [httpResponse statusCode]);
		NSLog(@"ResponseHeaders:\n%@", [httpResponse allHeaderFields]);
	}
	
	NSMutableArray *cookies = [[NSHTTPCookie cookiesWithResponseHeaderFields:[httpResponse allHeaderFields] forURL:binding.address] mutableCopy];
	
	binding.cookies = cookies;
	[cookies release];
  if ([urlResponse.MIMEType rangeOfString:@"text/xml"].length == 0) {
		NSError *error = nil;
		[connection cancel];
		if ([httpResponse statusCode] >= 400) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:[NSHTTPURLResponse localizedStringForStatusCode:[httpResponse statusCode]] forKey:NSLocalizedDescriptionKey];
				
			error = [NSError errorWithDomain:@"LifefitBindingResponseHTTP" code:[httpResponse statusCode] userInfo:userInfo];
		} else {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:
																[NSString stringWithFormat: @"Unexpected response MIME type to SOAP call:%@", urlResponse.MIMEType]
																													 forKey:NSLocalizedDescriptionKey];
			error = [NSError errorWithDomain:@"LifefitBindingResponseHTTP" code:1 userInfo:userInfo];
		}
				
		[self connection:connection didFailWithError:error];
  }
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
  if (responseData == nil) {
		responseData = [data mutableCopy];
	} else {
		[responseData appendData:data];
	}
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	if (binding.logXMLInOut) {
		NSLog(@"ResponseError:\n%@", error);
	}
	response.error = error;
	[delegate operation:self completedWithResponse:response];
}
- (void)dealloc
{
	[binding release];
	[response release];
	delegate = nil;
	[responseData release];
	[urlConnection release];
	
	[super dealloc];
}
@end
@implementation LifefitBinding_GetPolicyData
@synthesize PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.PolicyRequest = aPolicyRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(PolicyRequest != nil) [PolicyRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(PolicyRequest != nil) [bodyElements setObject:PolicyRequest forKey:@"PolicyDataRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"getPolicyData" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "PolicyDataResponse")) {
									tns1_PolicyDataResponse *bodyObject = [tns1_PolicyDataResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_PayPolicy
@synthesize PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
PolicyRequest:(tns1_PolicyPaymentRequest *)aPolicyRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.PolicyRequest = aPolicyRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(PolicyRequest != nil) [PolicyRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(PolicyRequest != nil) [bodyElements setObject:PolicyRequest forKey:@"PolicyPaymentRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"payPolicy" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ProcessResponse")) {
									tns1_ProcessResponse *bodyObject = [tns1_ProcessResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_ListPolicies
@synthesize PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
PolicyRequest:(tns1_PolicyListRequest *)aPolicyRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.PolicyRequest = aPolicyRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(PolicyRequest != nil) [PolicyRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(PolicyRequest != nil) [bodyElements setObject:PolicyRequest forKey:@"PolicyListRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"listPolicies" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "PolicyListResponse")) {
									tns1_PolicyListResponse *bodyObject = [tns1_PolicyListResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_ListClients
@synthesize ClientRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
ClientRequest:(tns1_ClientListRequest *)aClientRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.ClientRequest = aClientRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(ClientRequest != nil) [ClientRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(ClientRequest != nil) [bodyElements setObject:ClientRequest forKey:@"ClientListRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"listClients" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ClientListResponse")) {
									tns1_ClientListResponse *bodyObject = [tns1_ClientListResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_UpdateClientReference
@synthesize ClientRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
ClientRequest:(tns1_ClientReferenceUpdate *)aClientRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.ClientRequest = aClientRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(ClientRequest != nil) [ClientRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(ClientRequest != nil) [bodyElements setObject:ClientRequest forKey:@"ClientReferenceUpdate"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"updateClientReference" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ProcessResponse")) {
									tns1_ProcessResponse *bodyObject = [tns1_ProcessResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_GetClientSar
@synthesize ClientRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
ClientRequest:(tns1_ClientDataRequest *)aClientRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.ClientRequest = aClientRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(ClientRequest != nil) [ClientRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(ClientRequest != nil) [bodyElements setObject:ClientRequest forKey:@"ClientDataRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"getClientSar" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ClientSarResponse")) {
									tns1_ClientSarResponse *bodyObject = [tns1_ClientSarResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_GetPolicyAccounting
@synthesize PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.PolicyRequest = aPolicyRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(PolicyRequest != nil) [PolicyRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(PolicyRequest != nil) [bodyElements setObject:PolicyRequest forKey:@"PolicyDataRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"getPolicyAccounting" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "PolicyAccountingResponse")) {
									tns1_PolicyAccountingResponse *bodyObject = [tns1_PolicyAccountingResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_GetPremiumAccounting
@synthesize PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.PolicyRequest = aPolicyRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(PolicyRequest != nil) [PolicyRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(PolicyRequest != nil) [bodyElements setObject:PolicyRequest forKey:@"PolicyDataRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"getPremiumAccounting" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "PolicyAccountingResponse")) {
									tns1_PolicyAccountingResponse *bodyObject = [tns1_PolicyAccountingResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_UpdateClient
@synthesize ClientUpdate;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
ClientUpdate:(tns1_ClientUpdateRequest *)aClientUpdate
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.ClientUpdate = aClientUpdate;
	}
	
	return self;
}
- (void)dealloc
{
	if(ClientUpdate != nil) [ClientUpdate release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(ClientUpdate != nil) [bodyElements setObject:ClientUpdate forKey:@"ClientUpdateRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"updateClient" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ProcessResponse")) {
									tns1_ProcessResponse *bodyObject = [tns1_ProcessResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_UpdateAgent
@synthesize AgentUpdate;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
AgentUpdate:(tns1_AgentUpdateRequest *)aAgentUpdate
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.AgentUpdate = aAgentUpdate;
	}
	
	return self;
}
- (void)dealloc
{
	if(AgentUpdate != nil) [AgentUpdate release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(AgentUpdate != nil) [bodyElements setObject:AgentUpdate forKey:@"AgentUpdateRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"updateAgent" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ProcessResponse")) {
									tns1_ProcessResponse *bodyObject = [tns1_ProcessResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_ReversePaymentByReceiptNo
@synthesize PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
PolicyRequest:(tns1_PaymentReversalByReceiptNoRequest *)aPolicyRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.PolicyRequest = aPolicyRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(PolicyRequest != nil) [PolicyRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(PolicyRequest != nil) [bodyElements setObject:PolicyRequest forKey:@"PaymentReversalByReceiptNoRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"reversePaymentByReceiptNo" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ProcessResponse")) {
									tns1_ProcessResponse *bodyObject = [tns1_ProcessResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_GetPolicyLoans
@synthesize PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.PolicyRequest = aPolicyRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(PolicyRequest != nil) [PolicyRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(PolicyRequest != nil) [bodyElements setObject:PolicyRequest forKey:@"PolicyDataRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"getPolicyLoans" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "PolicyLoansResponse")) {
									tns1_PolicyLoansResponse *bodyObject = [tns1_PolicyLoansResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_GetInvoiceData
@synthesize PolicyRequest;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
PolicyRequest:(tns1_PolicyDataRequest *)aPolicyRequest
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.PolicyRequest = aPolicyRequest;
	}
	
	return self;
}
- (void)dealloc
{
	if(PolicyRequest != nil) [PolicyRequest release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(PolicyRequest != nil) [bodyElements setObject:PolicyRequest forKey:@"PolicyDataRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"getInvoiceData" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "InvoiceDataResponse")) {
									tns1_InvoiceDataResponse *bodyObject = [tns1_InvoiceDataResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
@implementation LifefitBinding_CalculateQuote
@synthesize QuoteData;
- (id)initWithBinding:(LifefitBinding *)aBinding delegate:(id<LifefitBindingResponseDelegate>)responseDelegate
QuoteData:(tns1_QuoteDataRequest *)aQuoteData
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.QuoteData = aQuoteData;
	}
	
	return self;
}
- (void)dealloc
{
	if(QuoteData != nil) [QuoteData release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [LifefitBindingResponse new];
	
	LifefitBinding_envelope *envelope = [LifefitBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(QuoteData != nil) [bodyElements setObject:QuoteData forKey:@"QuoteDataRequest"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"calculateQuote" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"LifefitBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "QuoteDataResponse")) {
									tns1_QuoteDataResponse *bodyObject = [tns1_QuoteDataResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
                                                                else if (xmlStrEqual(bodyNode->ns->prefix, (const xmlChar *) "soap") && 
                                                                         xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
                                                                }
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
static LifefitBinding_envelope *LifefitBindingSharedEnvelopeInstance = nil;
@implementation LifefitBinding_envelope
+ (LifefitBinding_envelope *)sharedInstance
{
	if(LifefitBindingSharedEnvelopeInstance == nil) {
		LifefitBindingSharedEnvelopeInstance = [LifefitBinding_envelope new];
	}
	
	return LifefitBindingSharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements
{
    xmlDocPtr doc;
	
	doc = xmlNewDoc((const xmlChar*)XML_DEFAULT_VERSION);
	if (doc == NULL) {
		NSLog(@"Error creating the xml document tree");
		return @"";
	}
	
	xmlNodePtr root = xmlNewDocNode(doc, NULL, (const xmlChar*)"Envelope", NULL);
	xmlDocSetRootElement(doc, root);
	
	xmlNsPtr soapEnvelopeNs = xmlNewNs(root, (const xmlChar*)"http://schemas.xmlsoap.org/soap/envelope/", (const xmlChar*)"soap");
	xmlSetNs(root, soapEnvelopeNs);
	
	xmlNsPtr xslNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/1999/XSL/Transform", (const xmlChar*)"xsl");
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
	
	xmlNewNsProp(root, xslNs, (const xmlChar*)"version", (const xmlChar*)"1.0");
	
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema", (const xmlChar*)"");
	xmlNewNs(root, (const xmlChar*)"LIFEfitData", (const xmlChar*)"LifefitService");
	xmlNewNs(root, (const xmlChar*)"LIFEfitData/types", (const xmlChar*)"tns1");
	
	if((headerElements != nil) && ([headerElements count] > 0)) {
		xmlNodePtr headerNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Header", NULL);
		xmlAddChild(root, headerNode);
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			xmlAddChild(headerNode, [header xmlNodeForDoc:doc elementName:key]);
		}
	}
	
	if((bodyElements != nil) && ([bodyElements count] > 0)) {
		xmlNodePtr bodyNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Body", NULL);
		xmlAddChild(root, bodyNode);
		
		for(NSString *key in [bodyElements allKeys]) {
			id body = [bodyElements objectForKey:key];
			xmlAddChild(bodyNode, [body xmlNodeForDoc:doc elementName:key]);
		}
	}
	
	xmlChar *buf;
	int size;
	xmlDocDumpFormatMemory(doc, &buf, &size, 1);
	
	NSString *serializedForm = [NSString stringWithCString:(const char*)buf encoding:NSUTF8StringEncoding];
	xmlFree(buf);
	
	xmlFreeDoc(doc);	
	return serializedForm;
}
@end
@implementation LifefitBindingResponse
@synthesize headers;
@synthesize bodyParts;
@synthesize error;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
		error = nil;
	}
	
	return self;
}
-(void)dealloc {
    self.headers = nil;
    self.bodyParts = nil;
    self.error = nil;	
    [super dealloc];
}
@end
