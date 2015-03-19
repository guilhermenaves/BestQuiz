//
//  telaEntraViewController.m
//  BestQuiz
//
//  Created by Guilherme Naves on 3/18/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import "telaEntraViewController.h"
#import "Inicial.h"

@interface telaEntraViewController ()
@property (weak, nonatomic) IBOutlet UILabel *boas;

@end

@implementation telaEntraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _boas.text = [NSString stringWithFormat: @"Seja Bem-Vindo %@", _nomes.nome];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
