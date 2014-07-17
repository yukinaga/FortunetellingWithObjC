//
//  ViewController.m
//  FortunetellingWithObjC
//
//  Created by Yukinaga Azuma on 2014/07/17.
//  Copyright (c) 2014年 Yukinaga Azuma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UILabel *animalLabel;
    IBOutlet UILabel *fortuneLabel;
    NSArray *animalArray;
}
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    animalArray = @[@"🐶", @"🐱", @"🐴", @"🐮", @"🐘", @"🐯"];
}

-(IBAction)buttonTapped:(id)sender
{
    NSUInteger length = [animalArray count];
    int rand = arc4random() % length;
    NSString *animal = animalArray[rand];
    
    animalLabel.text = animal;
    
    if ([animal isEqualToString:@"🐶"]) {
        fortuneLabel.text = @"大吉だワン！";
    }else if([animal isEqualToString:@"🐱"]){
        fortuneLabel.text = @"中吉だニャー！";
    }else if([animal isEqualToString:@"🐴"]){
        fortuneLabel.text = @"吉だヒヒーン！";
    }else if([animal isEqualToString:@"🐮"]){
        fortuneLabel.text = @"末吉だモー！";
    }else if([animal isEqualToString:@"🐘"]){
        fortuneLabel.text = @"凶だゾウ！";
    }else if([animal isEqualToString:@"🐯"]){
        fortuneLabel.text = @"大凶だガオー！";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
