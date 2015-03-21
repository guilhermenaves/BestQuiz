//
//  UserEscolha.m
//  BestQuiz
//
//  Created by Guilherme Naves on 3/20/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import "UserCat.h"
#import "Categoria.h"


@implementation UserCat {
    NSMutableArray *_catarray;
}

+ (id)sharedInstance {
    
    static UserCat* sharedInstance = nil;
    static dispatch_once_t once;
    
    dispatch_once(&once, ^{
        sharedInstance = [[UserCat alloc]init];
    });
    return sharedInstance;
}


- (instancetype) init {
    self = [super init];
    if (self) {
         _catarray = [[NSMutableArray alloc] init];
        [self populate];
    }
    return self;
}

- (int)count{
    return (int) _catarray.count;
}

- (NSArray *)catarray {
    return _catarray;
}

- (void)populate {
    UserCat *c[3];

    c[0] = [Categoria CategoriasWithCat:@"Tecnologia"];
    c[1] = [Categoria CategoriasWithCat:@"Mundo"];
    c[2] = [Categoria CategoriasWithCat:@"Economia"];
    
    for (int i = 0; i < 3; i++) {
        [_catarray addObject:c[i]];
    
    }
}

@end
