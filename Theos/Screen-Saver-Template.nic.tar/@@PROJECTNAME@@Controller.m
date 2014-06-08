


#import "@@PROJECTNAME@@Controller.h"


NSBundle *_bundle = nil;


@interface @@PROJECTNAME@@Controller ()
{
    UILabel *lbWelcome;
}
@end

@implementation @@PROJECTNAME@@Controller


+ (void)initialize
{
    _bundle = [[NSBundle bundleForClass:[self class]] retain];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    lbWelcome = [[[UILabel alloc] initWithFrame:CGRectMake(0,0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)] autorelease];
    lbWelcome.text = @"Welcome Screen Saver";
    lbWelcome.textAlignment = NSTextAlignmentCenter;
    lbWelcome.textColor = [UIColor whiteColor];
    lbWelcome.font = [UIFont systemFontOfSize:24.0f];
    
    [self.view addSubview:lbWelcome];
}


- (void)viewWillDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)dealloc {
	[super dealloc];
}

@end
