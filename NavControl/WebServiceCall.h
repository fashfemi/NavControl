//
//  WebServiceCall.h
//  NavControl
//
//  Created by faseyitan on 6/10/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LifefitService.h"


@interface WebServiceCall : UIViewController<LifefitBindingResponseDelegate>
{
    NSString* webUserId;
    NSString* webPassword;
}
@property(strong,nonatomic) NSString* webUserId;
@property(strong,nonatomic)NSString* webPassword;
@end
