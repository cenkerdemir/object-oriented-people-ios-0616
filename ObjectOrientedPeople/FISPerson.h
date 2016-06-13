//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Cenker Demir on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (strong, readonly) NSString *name;
@property (readonly) NSUInteger ageInYears;
@property (readonly) NSUInteger heightInInches;
@property (strong, readonly) NSMutableArray *skills;
@property (nonatomic,readonly) BOOL isQualifiedTutor;


-(instancetype) init;
-(instancetype) initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears;
-(instancetype) initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears
              heightInInches:(NSUInteger)heightInInches;
-(NSString *)celebrateBirthday;
-(void)learnSkillBash;
-(void)learnSkillXcode;
-(void)learnSkillObjectiveC;
-(void)learnSkillObjectOrientedProgramming;
-(void)learnSkillInterfaceBuilder;
//-(BOOL)isQualifiedTutor;

@end
