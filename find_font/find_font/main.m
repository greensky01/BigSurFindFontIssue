#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CFMutableDictionaryRef  attributes = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, NULL, NULL);
        // font name
        CFStringRef name = CFStringCreateWithCString(kCFAllocatorDefault, "Arial", kCFStringEncodingMacRoman);
        CFDictionaryAddValue(attributes, kCTFontNameAttribute, name);
        // create font traits
        CFMutableDictionaryRef traits = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, NULL, NULL);
        CTFontSymbolicTraits value = 0;
        
        // uncomment the following line to add Italic trait
//        value |= kCTFontItalicTrait;
        value |= kCTFontBoldTrait;
        
        CFNumberRef symbolicTraits = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &value);
        CFDictionaryAddValue(traits, kCTFontSymbolicTrait, symbolicTraits);
        CFDictionaryAddValue(attributes, kCTFontTraitsAttribute, traits);
        
        // create font descriptor
        CTFontDescriptorRef descriptor = CTFontDescriptorCreateWithAttributes(attributes);
        
        // create font object
        CTFontRef font = CTFontCreateWithFontDescriptor(descriptor, 0.0, NULL);
        
        // `po font` here, you can see it's always "ArialMT",
        // rather than "Arial-BoldMT" / "Arial-ItalicMT" / "Arial-BoldItalicMT"
        int a = 0;
    }
    return 0;
}
