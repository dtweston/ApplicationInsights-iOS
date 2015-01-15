#import "MSAIDataPoint.h"
/// Data contract class for type DataPoint.
@implementation MSAIDataPoint

/// Initializes a new instance of the class.
- (instancetype)init {
    if (self = [super init]) {
        self.kind = MSAIDataPointType_measurement;
    }
    return self;
}

///
/// Adds all members of this class to a dictionary
/// @param dictionary to which the members of this class will be added.
///
- (NSMutableDictionary *)serializeToDictionary {
    NSMutableDictionary * dict = [super serializeToDictionary];
    if (self.name != nil) {
        [dict setObject:self.name forKey:@"name"];
    }
    [dict setObject:[NSNumber numberWithInt:(int)self.kind] forKey:@"kind"];
    if (self.value != nil) {
        [dict setObject:self.value forKey:@"value"];
    }
    if (self.count != nil) {
        [dict setObject:self.count forKey:@"count"];
    }
    if (self.min != nil) {
        [dict setObject:self.min forKey:@"min"];
    }
    if (self.max != nil) {
        [dict setObject:self.max forKey:@"max"];
    }
    if (self.stdDev != nil) {
        [dict setObject:self.stdDev forKey:@"stdDev"];
    }
    return dict;
}

///
/// Serializes the object to a string in json format.
/// @param writer The writer to serialize this object to.
///
- (NSString *)serializeToString {
    NSMutableDictionary *dict = [self serializeToDictionary];
    NSMutableString  *jsonString;
    NSError *error = nil;
    NSData *json;
    json = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    jsonString = [[NSMutableString alloc] initWithData:json encoding:NSUTF8StringEncoding];
    return jsonString;
}

@end