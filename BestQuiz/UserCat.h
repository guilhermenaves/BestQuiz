//
//  UserEscolha.h
//  BestQuiz
//
//  Created by Guilherme Naves on 3/20/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserCat : NSObject

+ (id)sharedInstance;
- (int)count;
- (NSArray *)catarray;


@end
