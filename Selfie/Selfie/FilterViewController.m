//
//  FilterViewController.m
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

#import "FilterViewController.h"

#import "FilterCollectionViewCell.h"

#import "ImageEditing.h"

#import "SubmitViewController.h"

@interface FilterViewController () <UICollectionViewDataSource,UICollectionViewDelegate>

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
    
    
//    filterNames = [CIFilter filterNamesInCategory:kCICategoryColorEffect];
    
    filterNames = [CIFilter filterNamesInCategories:nil];
    
    [self.filterColectionView reloadData];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return filterNames.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FilterCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FilterCell" forIndexPath:indexPath];
    
    cell.filterName = filterNames[indexPath.item];
//    #warning FIX THIS
    
    UIImage * resizedImage = resizeImage(self.originalImage, CGSizeMake(80,80));
    cell.originalImage = resizedImage;
    
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FilterCollectionViewCell * cell = (FilterCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    
    self.filterImageView.image = filterImage(self.originalImage, cell.filterName);
    
}
- (IBAction)pressedNext:(id)sender {
    
    SubmitViewController * submitVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SubnmitVC"];

    
    submitVC.filteredImage = self.filterImageView.image;
    
    [self.navigationController pushViewController:submitVC animated:YES];
    
    
    
    
}



@end

