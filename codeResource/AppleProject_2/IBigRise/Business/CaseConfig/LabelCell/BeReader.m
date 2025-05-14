// __DEBUG__
// __CLOSE_PRINT__
//
//  BeReader.m
//
//  Created by Troy Brant on 9/18/10.
//  Updated by Antoine Marcadet on 9/23/11.
//  Updated by Divan Visagie on 2012-08-26
//

// __M_A_C_R_O__
//: #import "XMLReader.h"
#import "BeReader.h"

//: NSString *const kXMLReaderTextNodeKey = @"text";
NSString *const kConst_arcValue = @"text";
//: NSString *const kXMLReaderAttributePrefix = @"@";
NSString *const kConst_linkTextData = @"@";

//: @interface XMLReader ()
@interface BeReader ()

//: @property (nonatomic, strong) NSMutableArray *dictionaryStack;
@property (nonatomic, strong) NSMutableArray *dictionaryStack;
//: @property (nonatomic, strong) NSMutableString *textInProgress;
@property (nonatomic, strong) NSMutableString *textInProgress;
//: @property (nonatomic, strong) NSError *errorPointer;
@property (nonatomic, strong) NSError *errorPointer;

//: @end
@end


//: @implementation XMLReader
@implementation BeReader

//: #pragma mark - Public methods
#pragma mark - Public methods

//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data error:(NSError **)error
+ (NSDictionary *)viewUser:(NSData *)data convert_autoreleasing:(NSError **)error
{
    //: XMLReader *reader = [[XMLReader alloc] initWithError:error];
    BeReader *reader = [[BeReader alloc] initWithQuickError:error];
    //: NSDictionary *rootDictionary = [reader objectWithData:data options:0];
    NSDictionary *rootDictionary = [reader centerOptions:data label:0];
    //: return rootDictionary;
    return rootDictionary;
}

//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string error:(NSError **)error
+ (NSDictionary *)with:(NSString *)string dictionary:(NSError **)error
{
    //: NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    //: return [XMLReader dictionaryForXMLData:data error:error];
    return [BeReader viewUser:data convert_autoreleasing:error];
}

//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data options:(XMLReaderOptions)options error:(NSError **)error
+ (NSDictionary *)rowError:(NSData *)data limit:(XMLReaderOptions)options infoShould:(NSError **)error
{
    //: XMLReader *reader = [[XMLReader alloc] initWithError:error];
    BeReader *reader = [[BeReader alloc] initWithQuickError:error];
    //: NSDictionary *rootDictionary = [reader objectWithData:data options:options];
    NSDictionary *rootDictionary = [reader centerOptions:data label:options];
    //: return rootDictionary;
    return rootDictionary;
}

//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string options:(XMLReaderOptions)options error:(NSError **)error
+ (NSDictionary *)add:(NSString *)string index:(XMLReaderOptions)options cipher:(NSError **)error
{
    //: NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    //: return [XMLReader dictionaryForXMLData:data options:options error:error];
    return [BeReader rowError:data limit:options infoShould:error];
}


//: #pragma mark - Parsing
#pragma mark - Parsing

//: - (id)initWithError:(NSError **)error
- (id)initWithQuickError:(NSError **)error
{
 //: self = [super init];
 self = [super init];
    //: if (self)
    if (self)
    {
        //: self.errorPointer = *error;
        self.errorPointer = *error;
    }
    //: return self;
    return self;
}

//: - (NSDictionary *)objectWithData:(NSData *)data options:(XMLReaderOptions)options
- (NSDictionary *)centerOptions:(NSData *)data label:(XMLReaderOptions)options
{
    // Clear out any old data
    //: self.dictionaryStack = [[NSMutableArray alloc] init];
    self.dictionaryStack = [[NSMutableArray alloc] init];
    //: self.textInProgress = [[NSMutableString alloc] init];
    self.textInProgress = [[NSMutableString alloc] init];

    // Initialize the stack with a fresh dictionary
    //: [self.dictionaryStack addObject:[NSMutableDictionary dictionary]];
    [self.dictionaryStack addObject:[NSMutableDictionary dictionary]];

    // Parse the XML
    //: NSXMLParser *parser = [[NSXMLParser alloc] initWithData:data];
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:data];

    //: [parser setShouldProcessNamespaces:(options & XMLReaderOptionsProcessNamespaces)];
    [parser setShouldProcessNamespaces:(options & XMLReaderOptionsProcessNamespaces)];
    //: [parser setShouldReportNamespacePrefixes:(options & XMLReaderOptionsReportNamespacePrefixes)];
    [parser setShouldReportNamespacePrefixes:(options & XMLReaderOptionsReportNamespacePrefixes)];
    //: [parser setShouldResolveExternalEntities:(options & XMLReaderOptionsResolveExternalEntities)];
    [parser setShouldResolveExternalEntities:(options & XMLReaderOptionsResolveExternalEntities)];

    //: parser.delegate = self;
    parser.delegate = self;
    //: BOOL success = [parser parse];
    BOOL success = [parser parse];

    // Return the stack's root dictionary on success
    //: if (success)
    if (success)
    {
        //: NSDictionary *resultDict = [self.dictionaryStack objectAtIndex:0];
        NSDictionary *resultDict = [self.dictionaryStack objectAtIndex:0];
        //: return resultDict;
        return resultDict;
    }

    //: return nil;
    return nil;
}


//: #pragma mark -  NSXMLParserDelegate methods
#pragma mark -  NSXMLParserDelegate methods

//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    // Get the dictionary for the current level in the stack
    //: NSMutableDictionary *parentDict = [self.dictionaryStack lastObject];
    NSMutableDictionary *parentDict = [self.dictionaryStack lastObject];

    // Create the child dictionary for the new element, and initilaize it with the attributes
    //: NSMutableDictionary *childDict = [NSMutableDictionary dictionary];
    NSMutableDictionary *childDict = [NSMutableDictionary dictionary];
    //: [childDict addEntriesFromDictionary:attributeDict];
    [childDict addEntriesFromDictionary:attributeDict];

    // If there's already an item for this key, it means we need to create an array
    //: id existingValue = [parentDict objectForKey:elementName];
    id existingValue = [parentDict objectForKey:elementName];
    //: if (existingValue)
    if (existingValue)
    {
        //: NSMutableArray *array = nil;
        NSMutableArray *array = nil;
        //: if ([existingValue isKindOfClass:[NSMutableArray class]])
        if ([existingValue isKindOfClass:[NSMutableArray class]])
        {
            // The array exists, so use it
            //: array = (NSMutableArray *) existingValue;
            array = (NSMutableArray *) existingValue;
        }
        //: else
        else
        {
            // Create an array if it doesn't exist
            //: array = [NSMutableArray array];
            array = [NSMutableArray array];
            //: [array addObject:existingValue];
            [array addObject:existingValue];

            // Replace the child dictionary with an array of children dictionaries
            //: [parentDict setObject:array forKey:elementName];
            [parentDict setObject:array forKey:elementName];
        }

        // Add the new child dictionary to the array
        //: [array addObject:childDict];
        [array addObject:childDict];
    }
    //: else
    else
    {
        // No existing value, so update the dictionary
        //: [parentDict setObject:childDict forKey:elementName];
        [parentDict setObject:childDict forKey:elementName];
    }

    // Update the stack
    //: [self.dictionaryStack addObject:childDict];
    [self.dictionaryStack addObject:childDict];
}

//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    // Update the parent dict with text info
    //: NSMutableDictionary *dictInProgress = [self.dictionaryStack lastObject];
    NSMutableDictionary *dictInProgress = [self.dictionaryStack lastObject];

    // Set the text property
    //: if ([self.textInProgress length] > 0)
    if ([self.textInProgress length] > 0)
    {
        // trim after concatenating
        //: NSString *trimmedString = [self.textInProgress stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *trimmedString = [self.textInProgress stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        //: [dictInProgress setObject:[trimmedString mutableCopy] forKey:kXMLReaderTextNodeKey];
        [dictInProgress setObject:[trimmedString mutableCopy] forKey:kConst_arcValue];

        // Reset the text
        //: self.textInProgress = [[NSMutableString alloc] init];
        self.textInProgress = [[NSMutableString alloc] init];
    }

    // Pop the current dict
    //: [self.dictionaryStack removeLastObject];
    [self.dictionaryStack removeLastObject];
}

//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    // Build the text value
    //: [self.textInProgress appendString:string];
    [self.textInProgress appendString:string];
}

//: - (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError
- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError
{
    // Set the error pointer to the parser's error object
    //: self.errorPointer = parseError;
    self.errorPointer = parseError;
}

//: @end
@end