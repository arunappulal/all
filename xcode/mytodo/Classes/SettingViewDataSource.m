
#import "SettingViewDataSource.h"
#import "SettingViewController.h"
#import "CellViewWithLabel.h"

@implementation SettingViewDataSource

@synthesize settingViewController;

- (SettingViewDataSource *)init {
	self = [super init];
	return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 1;
}

- (UITableViewCell *)tableView:(UITableView *)table cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = nil;
	
	switch (indexPath.section) {
		case 0:
			switch (indexPath.row) {
				case 0:
					cell = [[CellViewWithLabel alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_VIEW_WITH_LABEL_ID];
					((CellViewWithLabel *)cell).nameLabel.text = @"Enable Animations";
					((CellViewWithLabel *)cell).view = settingViewController.animationSwitch;
					break;
				default:
					break;
			}
			break;
		default:
			break;
	}
	
	if (cell == nil) {
//		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:@"Cell"] autorelease];
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
		cell.textLabel.text = @"test";
	}
	
	
	return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	switch (section) {
		case 0:
			return @"General";
			break;
		case 1:
			return @"Colors";
			break;
		default:
			break;
	}
	return @"Section";
}

@end
