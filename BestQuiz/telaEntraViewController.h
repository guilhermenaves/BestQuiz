//
//  telaEntraViewController.h
//  BestQuiz
//
//  Created by Guilherme Naves on 3/18/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Inicial;

@interface telaEntraViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
-(IBAction)escolherButtom:(id)sender;

@property Inicial *nomes;
@property NSArray *categoria1;

@end
