Feature: Datatable Functionality

  Background:
    Given Navigate to basqar
    When  Enter username and password and click login button
    Then User should login successfuly


  Scenario: Create Country
    And Click on the element in the left Nav

      | setupOne   |
      | parameters |
      | countries  |

    And Click on the element in the element in the Dialog

      | addButton |

    And User sending the keys in Dialog content

      | nameInput | OnurCoun1 |
      | codeInput | 546546    |

    And Click on the element in the Dialog
      | saveButton |


    And  Success message should be displayed

    And User delete item from Dialog
      | OnurCoun1 |

    And  Success message should be displayed

  Scenario: Create a Nationality
    And  Click on the element in the left Nav
      | setupOne      |
      | parameters    |
      | nationalities |

    And Click on the element in the Dialog
      | addButton |

    And  User sending the keys in Dialog content
      | nameInput | onurNat1 |

    And Click on the element in the Dialog
      | saveButton |

    And  Success message should be displayed

    And User delete item from Dialog
      | OnurCoun1 |

    And Success message should be displayed

  Scenario: Create a Fee, delete Fee

    #    Senaryo Outline da verilen değerler için tüm senaryo her satır kadar tekrar çalıştırılıyordu.
    #    DataTable da ise, sadece ilgili step için toplu veri gönderme imkanı oluşuyor.

    And  Click on the element in the left Nav
      | setupOne   |
      | parameters |
      | fees       |

    And Click on the element in the Dialog
      | addButton |

    And  User sending the keys in Dialog content
      | nameInput       | onudrdNat1 |
      | CodeInput       | o1245     |
      | integrationCode | 12245      |
      | priorityCode    | 422       |

    And Click on the element in the Dialog
      | saveButton |

    And  Success message should be displayed

    And User delete item from Dialog
      | onudrNat1 |

    And Success message should be displayed