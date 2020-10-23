//
//  vectorClassTests.m
//  vectorClassTests
//
//  Created by Fedor on 23/10/2020.
//

#import <XCTest/XCTest.h>
#import "vectorClass.hpp"
#import "../vectorClass/vectorClass.cpp"

@interface vectorClassTests : XCTestCase

@end

@implementation vectorClassTests

- (void)test_vectorLength_122Inputed_3Returned {
    // arrange
    Vector vector_testing(1, 2, 2);
    double vector_Length;
    // act
    vector_Length = vector_testing.vectorLength();
    // assert
    XCTAssertEqual(3, vector_Length);
}

- (void)test_GettingXYZ_123Inputed_123Returned {
    // arrange
    Vector vector_testing(1, 2, 3);
    double x, y, z;
    // act
    x = vector_testing.get_x();
    y = vector_testing.get_y();
    z = vector_testing.get_z();
    // assert
    XCTAssertEqual(1, x);
    XCTAssertEqual(2, y);
    XCTAssertEqual(3, z);
}

- (void)test_Cosine_340and442Inputed_14div15Returned {
    // arrange
    Vector vector_testing_1(3, 4, 0);
    Vector vector_testing_2(4, 4, 2);
    double cosine;
    // act
    cosine = vector_testing_1 ^ vector_testing_2;
    // assert
    XCTAssertEqual((14.0)/(15.0), cosine);
}

- (void)test_Sum_122and310Inputed_432Returned {
    // arrange
    Vector vector_testing_1(1, 2, 2);
    Vector vector_testing_2(3, 1, 0);
    Vector vector_result;
    double x, y, z;
    // act
    vector_result = vector_testing_1 + vector_testing_2;
    x = vector_result.get_x();
    y = vector_result.get_y();
    z = vector_result.get_z();
    // assert
    XCTAssertEqual(4, x);
    XCTAssertEqual(3, y);
    XCTAssertEqual(2, z);
}

- (void)test_Minus_122and310Inputed_m212Returned {
    // arrange
    Vector vector_testing_1(1, 2, 2);
    Vector vector_testing_2(3, 1, 0);
    Vector vector_result;
    double x, y, z;
    // act
    vector_result = vector_testing_1 - vector_testing_2;
    x = vector_result.get_x();
    y = vector_result.get_y();
    z = vector_result.get_z();
    // assert
    XCTAssertEqual(-2, x);
    XCTAssertEqual(1, y);
    XCTAssertEqual(2, z);
}

//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
//
//- (void)test_vectorLength_122Inputed_3Returned {
//    // arrange
//    Vector vector_testing(1, 2, 2);
//    // act
//
//    // assert
//    XCTAssertEqual();
//}
@end
