// __DEBUG__
// __CLOSE_PRINT__
//
//  BeReader.h
//
//  Created by Troy Brant on 9/18/10.
//  Updated by Antoine Marcadet on 9/23/11.
//  Updated by Divan Visagie on 2012-08-26
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: enum {
enum {
    //: XMLReaderOptionsProcessNamespaces = 1 << 0, 
    XMLReaderOptionsProcessNamespaces = 1 << 0, // Specifies whether the receiver reports the namespace and the qualified name of an element.
    //: XMLReaderOptionsReportNamespacePrefixes = 1 << 1, 
    XMLReaderOptionsReportNamespacePrefixes = 1 << 1, // Specifies whether the receiver reports the scope of namespace declarations.
    //: XMLReaderOptionsResolveExternalEntities = 1 << 2, 
    XMLReaderOptionsResolveExternalEntities = 1 << 2, // Specifies whether the receiver reports declarations of external entities.
//: };
};
//: typedef NSUInteger XMLReaderOptions;
typedef NSUInteger XMLReaderOptions;

//: @interface XMLReader : NSObject <NSXMLParserDelegate>
@interface BeReader : NSObject <NSXMLParserDelegate>

//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data error:(NSError **)errorPointer;
+ (NSDictionary *)viewUser:(NSData *)data convert_autoreleasing:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string error:(NSError **)errorPointer;
+ (NSDictionary *)with:(NSString *)string dictionary:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data options:(XMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)rowError:(NSData *)data limit:(XMLReaderOptions)options infoShould:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string options:(XMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)add:(NSString *)string index:(XMLReaderOptions)options cipher:(NSError **)errorPointer;

//: @end
@end