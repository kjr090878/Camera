//
//  ViewController.m
//  Camera
//
//  Created by Kelly Robinson on 10/19/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

#import "ViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController () <UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@property UIImagePickerController * pickerController;


@property (weak, nonatomic) IBOutlet UIImageView *mySelfieimageView;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    if (self != nil) {
        
        self.pickerController = [[UIImagePickerController alloc] init];
        
        self.pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        self.pickerController.cameraDevice = UIImagePickerControllerCameraDeviceFront;
        
        self.pickerController.delegate = self;
 
        
    }
    
    return self;
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];

    
//    [self.view addSubview:self.pickerController.view];

    if (self.mySelfieimageView.image == nil) {
        
        [self presentViewController:self.pickerController animated:YES completion:nil];
        
    }
    
    
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    NSString * type = info[UIImagePickerControllerMediaType];
    
    if (type == (NSString *)kUTTypeImage) {
        
        UIImage * image = info[UIImagePickerControllerOriginalImage];
        
        self.mySelfieimageView.image = image;
        
        
    }
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}


@end

