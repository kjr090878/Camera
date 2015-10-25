//
//  FilterCollectionViewCell.m
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

#import "FilterCollectionViewCell.h"

#import "ImageEditing.h"

@implementation FilterCollectionViewCell

- (void)didMoveToWindow {
    
    self.FilterImageView.image = filterImage(self.originalImage, self.filterName);
    
}

- (void)prepareForReuse {
    
    self.FilterImageView.image = filterImage(self.originalImage, self.filterName);
    
}



@end
