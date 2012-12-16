// Mail Composer Methods
// Methods required to use the iOS Mail Composer
//
// Platform: iOS
// Language: Objective-C
// Completion Scope: Class Implementation

//#import "MFMailComposeViewController.h"

-(IBAction)showMailPicker:(id)sender {
    if ([MFMailComposeViewController canSendMail]) {
        
        [self displayMailComposerSheet];
        
    } else {
        
        NSString *alertString = <#Device not configured string#>;
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:alertString
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        [alertView show];
    }
}


-(void)displayMailComposerSheet
{
    MFMailComposeViewController *picker = nil;
    picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
        
    [picker setSubject:NSLocalizedString(￼,
                                         ￼)];
    [picker setMessageBody:<#Body#> isHTML:YES];
    NSArray *toRecipients = @[<#Recipients#>];
    [picker setToRecipients:toRecipients];
    
    [self presentModalViewController:picker animated:YES];
}


- (void)mailComposeController:(MFMailComposeViewController*)controller
          didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
              
  ￼
              
    if (error) {
        <#Handle error#>
    }
    
    [self dismissModalViewControllerAnimated:YES];
}