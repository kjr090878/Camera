////
////  SelfieTableViewCell.m
////  Camera
////
////  Created by Kelly Robinson on 10/19/15.
////  Copyright © 2015 Kelly Robinson. All rights reserved.
////
//
//#import "SelfieTableViewCell.h"
//
//
//@interface SelfieTableViewCell ()
//
//@property (weak, nonatomic) IBOutlet UIImageView *selfieImageView;
//
//@property (weak, nonatomic) IBOutlet UILabel *captionLabel;
//
//@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
//
//
//
//@end
//
//@implementation SelfieTableViewCell
//
//- (void)setSelfie:(PFObject *)selfie {
//    
//    NSLog(@"did move to window")
//    
//    _selfie = selfie;
//    [self updateInfo];
//    
//    
//}
//
////
////- (void)prepareForReuse {
////    
////    [self updateInfo];
////    
////}
//
//- (void)updateInfo {
//    
//    NSLog(@"%@",self.selfie);
//    
//    PFFile *userImageFile = self.selfie[@"image"];
//    [userImageFile getDataInBackgroundWithBlock:^(NSData * imageData, NSError *error) {
//        if (!error) {
//            
//            self.selfieImageView.image = [UIImage imageWithData:imageData];
//        
//        
//        }
//    }];
//    
////    self.selfieImageView.image = self.selfie[@"image"];
//    
//}
//
//@end
