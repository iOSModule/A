//
//  AViewController.m
//  MainProject
//
//  Created by 于鸿鹏 on 2021/2/5.
//

#import "AViewController.h"

// #import "BViewController.h"

#import <B_Category/CTMediator+B.h>

@interface AViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"A";
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.button];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];

    [self.button sizeToFit];
    self.button.center = self.view.center;
}

#pragma mark - event response
- (void)pushBViewControllerButton:(UIButton *)button
{
    /**
     BViewController *viewController = [[BViewController alloc] init];
     [self.navigationController pushViewController:viewController animated:YES];
     */
    
    
    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

#pragma mark - getters and setters
- (UIButton *)button
{
    if (_button == nil) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        [_button setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(pushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@end
