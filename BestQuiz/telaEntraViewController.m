//
//  telaEntraViewController.m
//  BestQuiz
//
//  Created by Guilherme Naves on 3/18/15.
//  Copyright (c) 2015 Mpex. All rights reserved.
//

#import "telaEntraViewController.h"
#import "Inicial.h"
#import "Categoria.h"
#import "UserCat.h"


@interface telaEntraViewController ()
@property (weak, nonatomic) IBOutlet UILabel *boas;

@end

@implementation telaEntraViewController {
    UserCat *cat;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    cat = [[UserCat sharedInstance] init];
    
    _boas.text = [NSString stringWithFormat: @"Seja Bem-Vindo %@", _nomes.nome];
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [cat count];
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSArray *categos = [cat catarray];
    Categoria *cat1 = [categos objectAtIndex:row];
    
    return cat1.Categoria;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)escolherButtom:(id)sender{
    
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
