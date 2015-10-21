//
//  FilterCollectionViewCell.m
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

#import "FilterCollectionViewCell.h"

@implementation FilterCollectionViewCell

- (void)didMoveToWindow {
    
    [self filterImage];
    
}

- (void)prepareForReuse {
    
    [self filterImage];
    
}


- (void)filterImage {
    
    CIContext * context = [CIContext contextWithOptions:nil];               // 1
    
    CIImage * image = [CIImage imageWithCGImage:self.originalImage.CGImage];               // 2
    
    CIFilter * filter = [CIFilter filterWithName:self.filterName];// 3
    
    
    [filter setValue:image forKey:kCIInputImageKey];
//    [filter setValue:@0.8f forKey:kCIInputIntensityKey];
    
    
    CIImage * filteredImage = [filter valueForKey:kCIOutputImageKey];              // 4
   
    CGRect extent = [filteredImage extent];
    
    CGImageRef cgImage = [context createCGImage:filteredImage fromRect:extent];   // 5
    
    #warning FIX THIS : Orientation is not working correct.
    self.FilterImageView.image = [UIImage imageWithCGImage:cgImage];
    
}

@end
