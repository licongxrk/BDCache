//
//  ViewController.m
//  BDCacheDemo
//
//  Created by licong on 2019/1/18.
//  Copyright © 2019 licong. All rights reserved.
//

#import "ViewController.h"
#import "BDCache/BDCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BDCache *cache = [BDCache sharedCache];

    [cache setObject:@"new" forKey:@"new"];
    [cache setObject:@"old" forKey:@"old"];
    [cache removeObjectForKey:@"old" block:^(BDCache *cache, NSString *key, id object) {
        NSLog(@"key:%@,object:%@",key,object);
    }];
    [cache removeAllObjects];
}


@end
