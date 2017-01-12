//
//  ViewController.m
//  PopupContextMenuDemo
//
//  Created by sky on 2017/1/12.
//  Copyright © 2017年 sky. All rights reserved.
//

#import "ViewController.h"
#import "UAIPopContextMenuView.h"

@interface ViewController ()<UITableViewDelegate>

@property (nonatomic) NSArray * popMeunuSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.popMeunuSource = @[@"Option A", @"Option B", @"Option C", @"Option D"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
   
    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    CGPoint point = cell.center;
    point = [tableView convertPoint:cell.center toView:self.view];
    UAIPopContextMenuView *pop = [[UAIPopContextMenuView alloc] initWithPoint:point width:point.x data:self.popMeunuSource];
    
    __weak __typeof(self) weakSelf = self;
    pop.selectRowAtIndex = ^(NSString * selectedItem){
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"PopUp Menu" message:selectedItem preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
        
        [weakSelf presentViewController:alert animated:YES completion:nil];
    };
    
    [pop show];
}

@end
