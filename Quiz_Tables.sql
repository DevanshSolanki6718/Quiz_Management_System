CREATE TABLE MST_User (
    UserID INT PRIMARY KEY IDENTITY(1,1), 
    UserName NVARCHAR(100) NOT NULL, 
    Password NVARCHAR(100) NOT NULL, 
    Email NVARCHAR(100) NOT NULL, 
    Mobile NVARCHAR(100) NOT NULL, 
    IsActive BIT NOT NULL DEFAULT 1, 
    IsAdmin BIT NOT NULL DEFAULT 0, 
    Created DATETIME NOT NULL DEFAULT GETDATE(), 
    Modified DATETIME NOT NULL
);

CREATE TABLE MST_Quiz (
    QuizID INT PRIMARY KEY IDENTITY(1,1), 
    QuizName NVARCHAR(100) NOT NULL, 
    TotalQuestions INT NOT NULL, 
    QuizDate DATETIME NOT NULL, 
    UserID INT NOT NULL, 
    Created DATETIME NOT NULL DEFAULT GETDATE(), 
    Modified DATETIME NOT NULL, 
    CONSTRAINT FK_User FOREIGN KEY (UserID) REFERENCES MST_User(UserID)
);

CREATE TABLE MST_QuestionLevel (
    QuestionLevelID INT PRIMARY KEY IDENTITY(1,1), 
    QuestionLevel NVARCHAR(100) NOT NULL, 
    UserID INT NOT NULL, 
    Created DATETIME NOT NULL DEFAULT GETDATE(), 
    Modified DATETIME NOT NULL, 
    CONSTRAINT FK_User_QuestionLevel FOREIGN KEY (UserID) REFERENCES MST_User(UserID)
);

CREATE TABLE MST_Question (
    QuestionID INT PRIMARY KEY IDENTITY(1,1), 
    QuestionText NVARCHAR(MAX) NOT NULL, 
    QuestionLevelID INT NOT NULL, 
    OptionA NVARCHAR(100) NOT NULL, 
    OptionB NVARCHAR(100) NOT NULL, 
    OptionC NVARCHAR(100) NOT NULL, 
    OptionD NVARCHAR(100) NOT NULL, 
    CorrectOption NVARCHAR(100) NOT NULL, 
    QuestionMarks INT NOT NULL, 
    IsActive BIT NOT NULL DEFAULT 1, 
    UserID INT NOT NULL, 
    Created DATETIME NOT NULL DEFAULT GETDATE(), 
    Modified DATETIME NOT NULL, 
    CONSTRAINT FK_QuestionLevel FOREIGN KEY (QuestionLevelID) REFERENCES MST_QuestionLevel(QuestionLevelID),
    CONSTRAINT FK_User_Question FOREIGN KEY (UserID) REFERENCES MST_User(UserID)
);

CREATE TABLE MST_QuizWiseQuestions (
    QuizWiseQuestionsID INT PRIMARY KEY IDENTITY(1,1),
    QuizID INT NOT NULL,                              
    QuestionID INT NOT NULL,                          
    UserID INT NOT NULL,                              
    Created DATETIME NOT NULL DEFAULT GETDATE(),      
    Modified DATETIME NOT NULL,                       
    CONSTRAINT FK_Quiz FOREIGN KEY (QuizID) REFERENCES MST_Quiz(QuizID),
    CONSTRAINT FK_Question FOREIGN KEY (QuestionID) REFERENCES MST_Question(QuestionID),
    FOREIGN KEY (UserID) REFERENCES MST_User(UserID)
);

