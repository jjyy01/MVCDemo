//
//  DetailViewController.m
//  MVCDemo
//
//  Created by moxie on 14-9-7.
//  Copyright (c) 2014年 moxie. All rights reserved.
//

#import "DetailViewController.h"
#import "AFNetworking.h"

@interface DetailViewController ()
//@property (weak, nonatomic)UIWebView *webView;
@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadWebFromLink:(NSString *)link
{
    UIWebView *webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
    link = [@"http://www.readability.com/m?url=" stringByAppendingString:link];
    NSURL *url = [NSURL URLWithString:link];
    NSLog(@"link: %@", url);
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:60*24];
    [webView loadRequest:request];
    [self.view addSubview:webView];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
