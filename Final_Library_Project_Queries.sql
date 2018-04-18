USE db_lib;
GO

CREATE PROCEDURE dbo.libBookReports

AS

-- Q1 = How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?

SELECT SUM(BOOK_COPIES.No_Of_Copies) AS 'Number of copies of "The Lost Tribe" in the Sharpstown branch'
FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK_COPIES.BookId = BOOK.BookId
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchId = LIBRARY_BRANCH.BranchId
WHERE LIBRARY_BRANCH.BranchName='Sharpstown' AND BOOK.Title='The Lost Tribe';


-- Q2 = How many copies of the book titled "The Lost Tribe" are owned by each library branch?

SELECT BOOK_COPIES.No_Of_Copies AS 'Number of copies of "The Lost Tribe"', LIBRARY_BRANCH.BranchName
FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK_COPIES.BookId = BOOK.BookId
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchId = LIBRARY_BRANCH.BranchId
WHERE BOOK.Title='The Lost Tribe';


-- Q3 = Retrieve the names of all borrowers who do not have any books checked out.

DECLARE
@date DATE
SET @date=CAST(GETDATE() AS DATE)

SELECT Name AS 'Borrowers who do not have any books checked out'
FROM BORROWER 
WHERE CardNo NOT IN
	(SELECT DISTINCT CardNo 
	FROM BOOK_LOANS 
	WHERE DueDate >= @date);

-- Q4 = For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.

SELECT BOOK.Title AS 'Book Titles Due Today', BORROWER.Name, BORROWER.Address
FROM BOOK_LOANS
INNER JOIN LIBRARY_BRANCH ON BOOK_LOANS.BranchId = LIBRARY_BRANCH.BranchId
INNER JOIN BOOK ON BOOK_LOANS.BookId = BOOK.BookId
INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo
WHERE LIBRARY_BRANCH.BranchName = 'Sharpstown' AND BOOK_LOANS.DueDate = @date;


-- Q5 = For each library branch, retrieve the branch name and the total number of books loaned out from that branch.

SELECT LIBRARY_BRANCH.BranchName AS 'Branch Name:', COUNT(BOOK_LOANS.LoanId) AS 'Total Books Loaned Out:'
FROM LIBRARY_BRANCH
INNER JOIN BOOK_LOANS ON LIBRARY_BRANCH.BranchId = BOOK_LOANS.BranchId
WHERE BOOK_LOANS.DueDate >= @date GROUP BY LIBRARY_BRANCH.BranchName;


-- Q6 = Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.

SELECT BORROWER.Name, BORROWER.Address, COUNT(BOOK_LOANS.LoanId) AS 'Number of Books Checked Out:'
FROM BOOK_LOANS
INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.CardNo 
WHERE BOOK_LOANS.DueDate >= @date 
GROUP BY BORROWER.CardNo, BORROWER.Name, BORROWER.Address
HAVING COUNT(BOOK_LOANS.LoanId) >= '5';

-- Q7 = For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".

SELECT BOOK.Title AS 'Stephen King Book Titles', BOOK_COPIES.No_Of_Copies AS 'Number of Copies at Central Branch'
FROM BOOK_COPIES
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchId = LIBRARY_BRANCH.BranchId
INNER JOIN BOOK ON BOOK_COPIES.BookId = BOOK.BookId
INNER JOIN BOOK_AUTHORS ON BOOK.BookId = BOOK_AUTHORS.BookId
WHERE LIBRARY_BRANCH.BranchName = 'Central'
AND BOOK_AUTHORS.AuthorName = 'Stephen King';

GO