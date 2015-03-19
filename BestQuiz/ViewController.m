//
//  ViewController.m
//  BestQuiz
//
//  Created by Guilherme Naves on 3/18/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import "ViewController.h"
#import "Inicial.h"
#import "telaEntraViewController.h"

@interface ViewController () {
    Inicial *box;
    int nomeAtual;
}


@property (weak, nonatomic) IBOutlet UITextField *nome;
@property (weak, nonatomic) IBOutlet UITextField *senha;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    nomeAtual =0;
    
}
    
// Do any additional setup after loading the view, typically from a nib.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}

- (void) setNome {
    
    box = [[Inicial alloc] initWithNome:_nome.text];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self setNome];
    
    if ([segue.identifier isEqualToString:@"goToEntrar"]) {
        telaEntraViewController *tela = segue.destinationViewController;
        tela.nomes = box;
    }
}

@end
