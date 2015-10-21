//
//  FilterViewController.m
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

#import "FilterViewController.h"

#import "FilterCollectionViewCell.h"

UIImage * resizeImage(UIImage * image, CGSize newSize) {
    
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
    
}

@interface FilterViewController () <UICollectionViewDataSource,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *filterImageView;

@property (weak, nonatomic) IBOutlet UICollectionView *filterColectionView;
@end

@implementation FilterViewController

{
    NSArray * filterNames;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.filterImageView.image = self.originalImage;
    
    self.filterImageView.image = self.originalImage;
    
    self.filterColectionView.dataSource = self;
    self.filterColectionView.delegate = self;
    
    
    filterNames = [CIFilter filterNamesInCategory:kCICategoryColorEffect];
    
    [self.filterColectionView reloadData];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return filterNames.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FilterCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FilterCell" forIndexPath:indexPath];
    
    cell.filterName = filterNames[indexPath.item];
    #warning FIX THIS
    
    UIImage * resizedImage = resizeImage(self.originalImage, CGSizeMake(80,80));
    cell.originalImage = resizedImage;
    
    return cell;
    
}


@end

