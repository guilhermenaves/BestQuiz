//
//  Inicial.m
//  BestQuiz
//
//  Created by Guilherme Naves on 3/18/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import "Inicial.h"
#import "ViewController.h"

@implementation Inicial

-(id)initWithNome:(NSString *)novoNome {
    self=[super  init];
    if (self) {
        _nome = novoNome;
        
    }
    return self;
}

static Inicial *nome = nil;

+ (Inicial *)nome {
    if(!nome) {
        nome = [[self alloc] init];
    }
    return  nome;
}

+ (void)setNome:(Inicial *)setNome{
    setNome = nome;
}

@end
