//
//  SelfieTableViewCell.h
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface SelfieTableViewCell : UITableViewCell

@property (nonatomic) PFObject * selfie;

@end
