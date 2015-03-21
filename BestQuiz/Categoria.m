//
//  Usuarios.m
//  BestQuiz
//
//  Created by Guilherme Naves on 3/20/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import "Categoria.h"
//#import "UserCat.h"

@class UserCat;
@implementation Categoria : NSObject 

+ (id)CategoriasWithCat: (NSString *)novaCategoria {
    return  [[Categoria alloc] initWithCategoria:novaCategoria];
    
}

- (id)initWithCategoria: (NSString *)novaCategoria {
    
    self=[super init];
    if (self) {
        _Categoria = novaCategoria;
    }
    return self;
}

- (NSString *) descr {
    return [NSString stringWithFormat:@"%@", _Categoria];
}


@end
