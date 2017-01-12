# PopUpContextMenu
Pop up context menu, OC
## using example
```oc
#import "SKPopContextMenuView.h"
...

    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    CGPoint point = cell.center;
    point = [tableView convertPoint:cell.center toView:self.view];
    UAIPopContextMenuView *pop = [[UAIPopContextMenuView alloc] initWithPoint:point width:point.x data:self.popMeunuSource];
    
    __weak __typeof(self) weakSelf = self;
    pop.selectRowAtIndex = ^(NSString * selectedItem){
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"PopUp Menu" message:selectedItem preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
        
        [weakSelf presentViewController:alert animated:YES completion:nil];
    };
    
    [pop show];

 ![image](https://github.com/iskyfei/PopUpContextMenu/blob/master/screenSnapshot.png)
