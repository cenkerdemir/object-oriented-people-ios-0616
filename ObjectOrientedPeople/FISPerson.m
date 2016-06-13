//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Cenker Demir on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson()

@property (strong, readwrite) NSString *name;
@property (readwrite) NSUInteger ageInYears;
@property (readwrite) NSUInteger heightInInches;
@property (strong, readwrite) NSMutableArray *skills;
@property (nonatomic,readwrite) BOOL isQualifiedTutor;

@end

@implementation FISPerson

-(instancetype) init {
    self = [self initWithName:@"Mark" ageInYears:29 heightInInches:71];
    return self;
}

-(instancetype) initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears {
    self = [self initWithName:name ageInYears:ageInYears heightInInches:67];
    return self;
}

-(instancetype) initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears
              heightInInches:(NSUInteger)heightInInches {
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
    }
    return self;
}

-(BOOL)isQualifiedTutor {
    if ([self.skills count] >= 4) {
        return YES;
    }
    else {
        return NO;
    }
}

-(NSString *)celebrateBirthday {
    self.ageInYears += 1;
    NSString *ageWithOrdinal = [NSString stringWithFormat:@"%lu%@",self.ageInYears,[self ordinalForInteger:self.ageInYears]];
    NSString *birthdayMessage = [NSString stringWithFormat:@"HAPPY %@ BIRTHDAY, %@!!!",[ageWithOrdinal uppercaseString], [self.name uppercaseString]];
    NSLog(@"%@", birthdayMessage);
    return birthdayMessage;
}

// helper method
- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}


-(void)learnNewSkill:(NSString *)newSkill {
    BOOL shouldTheSkillBeAdded = YES;
    for (NSUInteger i=0; i < [self.skills count]; i++) {
        if ([self.skills[i] isEqualToString:newSkill]) {
            shouldTheSkillBeAdded = NO;
        }
    }
    if (shouldTheSkillBeAdded) {
        [self.skills addObject:newSkill];
    }

}

-(void)learnSkillBash {
    [self learnNewSkill:@"bash"];
}

-(void)learnSkillXcode {
    [self learnNewSkill:@"Xcode"];
}

-(void)learnSkillObjectiveC {
    [self learnNewSkill:@"Objective-C"];
}

-(void)learnSkillObjectOrientedProgramming {
    [self learnNewSkill:@"Object-Oriented Programming"];
}

-(void)learnSkillInterfaceBuilder {
    [self learnNewSkill:@"Interface Builder"];
}

/* THE METHOD DESCRIBED IN THE INSTRUCTIONS SECTION IS WORKING AND IS COMMENTED OUT BELOW. ABOVE IS ANOTHER METHOD I WANTED TO TRY OUT
-(void)learnSkillBash {
    if (![self.skills containsObject:@"bash"]) {
        [self.skills addObject:@"bash"];
    }
}


-(void)learnSkillXcode {
    if (![self.skills containsObject:@"Xcode"]) {
        [self.skills addObject:@"Xcode"];
    }

}

//implementing these in a different way than the first two
-(void)learnSkillObjectiveC {
    BOOL shouldTheSkillBeAdded = YES;
    for (NSUInteger i=0; i < [self.skills count]; i++) {
        if ([self.skills[i] isEqualToString:@"Objective-C"]) {
            shouldTheSkillBeAdded = NO;
        }
    }
    if (shouldTheSkillBeAdded) {
        [self.skills addObject:@"Objective-C"];
    }
}

-(void)learnSkillObjectOrientedProgramming {
    BOOL shouldTheSkillBeAdded = YES;
    for (NSUInteger i=0; i < [self.skills count]; i++) {
        if ([self.skills[i] isEqualToString:@"Object-Oriented Programming"]) {
            shouldTheSkillBeAdded = NO;
        }
    }
    if (shouldTheSkillBeAdded) {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}

-(void)learnSkillInterfaceBuilder {
    BOOL shouldTheSkillBeAdded = YES;
    for (NSUInteger i=0; i < [self.skills count]; i++) {
        if ([self.skills[i] isEqualToString:@"Interface Builder"]) {
            shouldTheSkillBeAdded = NO;
        }
    }
    if (shouldTheSkillBeAdded) {
        [self.skills addObject:@"Interface Builder"];
    }
}

*/

//-(BOOL)isQualifiedTutor {
//    if ([self.skills count] >= 4) {
//        return YES;
//    }
//    else {
//        return NO;
//    }
//}


@end
