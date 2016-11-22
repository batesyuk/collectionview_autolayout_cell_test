#import "ViewController.h"

@interface ViewController () <UICollectionViewDelegate,
UICollectionViewDataSource>

@property (nonatomic, weak) IBOutlet UICollectionView * collectionView;

@end

@implementation ViewController

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
  return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *identifier = indexPath.row == 0 ? @"cell_one" : @"cell_two";
  return [collectionView dequeueReusableCellWithReuseIdentifier:identifier
                                                   forIndexPath:indexPath];
}

@end
