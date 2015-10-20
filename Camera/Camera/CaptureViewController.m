//
//  CaptureViewController.m
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

#import "CaptureViewController.h"

#import "FilterViewController.h"

@interface CaptureViewController () <UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIView *cameraHolderView;

@property UIImagePickerController * picker;

@end

@implementation CaptureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.view setNeedsUpdateConstraints];
//    [self.view setNeedsLayout];
    
    self.picker = [[UIImagePickerController alloc] init]; // setting it
    self.picker.sourceType = UIImagePickerControllerSourceTypeCamera; // getter
    self.picker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
    self.picker.delegate = self;
    self.picker.showsCameraControls = NO;
    
    
    
    
    
    
    
    [self.cameraHolderView addSubview:self.picker.view];
    
//    [self setPicker:[[UIImagePickerController alloc] init]]; 
//    [self picker].sourceType = UIImagePickerControllerSourceTypeCamera; what's actually happening from above
    
    
   
}

- (void)viewDidLayoutSubviews {
    
    self.picker.view.frame = self.cameraHolderView.bounds;
    
    NSLog(@"%f %f",self.cameraHolderView.bounds.size.width,self.cameraHolderView.bounds.size.height);
    
    CGRect newFrame = self.picker.view.frame;
    
    //    CGFloat newWidth = self.picker.view.frame.
    
    newFrame.size.width = newFrame.size.height / 4 * 3;
    
    newFrame.origin.x = (self.cameraHolderView.frame.size.width - newFrame.size.width) / 2;
    
    NSLog(@"%f %f",newFrame.size.width,newFrame.size.height);
    
    self.picker.view.frame = newFrame;
    
    [self.cameraHolderView addSubview:self.picker.view];
    
    // Swift version: self.picker.view.size.width = newWidth;

    
}

- (IBAction)takePicture:(id)sender {
    
    [self.picker takePicture];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    UIImage * image = info[UIImagePickerControllerOriginalImage];
    
    FilterViewController * filterVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FilterVC"];
    
    // pass the image
    
    NSLog(@"%@",filterVC.filterImageView);
    
    filterVC.originalImage = image;
    

    
    [self.navigationController pushViewController:filterVC animated:YES];
    
    
    
}


@end
