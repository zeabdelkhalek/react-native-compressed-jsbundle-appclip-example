//
//  ViewController.m
//  AppClip
//
//  Created by Abdelkhalek ZELLAT on 23/6/2022.
//

#import "ViewController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

#import "SceneDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
#if DEBUG
  NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings]
                           jsBundleURLForBundleRoot:@"index.appclip"];
#else
  NSURL *jsCodeLocation = [[NSBundle mainBundle]
                           URLForResource:@"main" withExtension:@"jsbundle"];
#endif
  
  UIScene *scene = UIApplication.sharedApplication.connectedScenes.anyObject;
  
  SceneDelegate *sceneDelegate = (SceneDelegate*) scene.delegate;
  
  NSURL *incomingURL = sceneDelegate.incomingURL;
  
  NSString *uri = incomingURL.absoluteString;
  NSLog(@"uri--xxxx--- => %@", uri);
  
  NSDictionary *initialProperties = @{
    @"uri" : uri
  };
  
  NSLog(@"InitialProperties => %@", initialProperties);
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"AppClip"
                                               initialProperties:initialProperties
                                                   launchOptions:nil];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
  
  self.view = rootView;
}


- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}


@end

