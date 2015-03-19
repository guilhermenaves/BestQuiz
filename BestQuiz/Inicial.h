//
//  Inicial.h
//  BestQuiz
//
//  Created by Guilherme Naves on 3/18/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Inicial : NSObject

@property NSString *nome;

+ (Inicial *)nome;
+ (void)setNome:(Inicial *)nome;
- (id)initWithNome: (NSString *) novoNome;


@end
