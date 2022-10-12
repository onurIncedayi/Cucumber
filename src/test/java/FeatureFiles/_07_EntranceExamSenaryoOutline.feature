#  Bir önceki Exam Giriş Senaryosunu
#  Aşağıdaki değerler için çalıştırınız.
#
#| ExamName        | AcademicPeriodOption      | GradeLevelOption |
#| Math exam is31   | academicPeriod2              | gradeLevel4  |
#| IT exam is31     | academicPeriod2              | gradeLevel2  |
#| Oracle exam is91 | academicPeriod2              | gradeLevel3  |
#| Math exam  is1  | academicPeriod2              | gradeLevel1  |

Feature: Entrance Exam Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario Outline: Create and Delete a Exam
    And Click on the element in the left Nav
      | entranceExamsOne |
      | setupTwo         |
      | entranceExamsTwo |

    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | nameInput | <ExamName> |

    And Click on the element in the Form Content
      | academicPeriod         |
      | <AcademicPeriodOption> |
      | gradeLevel             |
      | <GradeLevelOption>     |

    #TODO: Akademik period ve GradeLevel tıklanma problemi

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayed

    And Click on the element in the left Nav



    And User delete item from Dialog

      | <ExamName> |


    Then Success message should be displayed

    Examples:

      | ExamName        | AcademicPeriodOption | GradeLevelOption |
      | Math exam duk31   | academicPeriod1      | gradeLevel2      |
      | IT exam duk31     | academicPeriod1      | gradeLevel5      |
      | Oracle exam duk31 | academicPeriod1      | gradeLevel3      |
      | Math exam  duk31  | academicPeriod1      | gradeLevel4      |
      #TODO yukarıdaki akademik ve Grade Level option için academicPeriod2 ve gradeLevel1,2,3 bulunup example koyulacak






