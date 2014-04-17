//
//  LDLCollectionViewController.m
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import "LDLCollectionViewController.h"

@interface LDLCollectionViewController ()

@end

@implementation LDLCollectionViewController

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


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return 3;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];

  cell.contentView.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.f
                                                     green:arc4random_uniform(256)/255.f
                                                      blue:arc4random_uniform(256)/255.f
                                                     alpha:1];

  return cell;
}


@end
