#import "MSAIObject.h"
#import "MSAITelemetryData.h"

///Data contract class for type DataPoint.
@interface MSAIDataPoint : MSAIObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) MSAIDataPointType kind;
@property (nonatomic, strong) NSNumber *value;
@property (nonatomic, strong) NSNumber *count;
@property (nonatomic, strong) NSNumber *min;
@property (nonatomic, strong) NSNumber *max;
@property (nonatomic, strong) NSNumber *stdDev;


@end