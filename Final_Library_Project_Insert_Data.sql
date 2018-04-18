USE db_lib;

INSERT INTO PUBLISHER
	(Name,Address,Phone)
	VALUES
	('Penguin', '123 S Main St. Chicago, IL 67345', '203-897-3546'),
	('Elsevier', '56 Elm St. Portland, ME 01432', '765-839-5463'),
	('Oxford', '35 Charles St. Oxford, Oxfordshire 4E3 8I3 UK', '324-763-9372'),
	('Cabridge', '113 Elizabeth St. Cambridge, Warwicksire 9D4 2F8 UK', '648-826-4637'),
	('Routledge', '76 James St. Abingdon-on-Thames, Oxfordshire 4E3 8I3 UK', '748-935-4623')
;

INSERT INTO LIBRARY_BRANCH
	(BranchName,Address)
	VALUES
	('Sharpstown', '67 SE Willamette St. Eugene, OR 97254'),
	('Central', '13 Main St. Eugene, OR 97255'),
	('West', '786 W 13th Ave. Eugene, OR 97253'),
	('North', '972 N Coburg Rd. Eugene, OR 97255')
;

INSERT INTO BOOK
	(Title,PublisherName)
	VALUES
	('Thirteen Reasons Why','Penguin'),
	('Drama','Cabridge'),
	('The Kite Runner','Penguin'),
	('George','Penguin'),
	('To Kill a Mockingbird','Routledge'),
	('The Hate U Give','Elsevier'),
	('I Am Jazz','Oxford'),
	('Once, in Lourdes','Elsevier'),
	('Ali: A Life','Oxford'),
	('Isaac the Alchemist: Secrets of Isaac Newton, Reveal’d','Penguin'),
	('Silencer','Routledge'),
	('The Graybar Hotel','Elsevier'),
	('What It Means When a Man Falls From the Sky','Elsevier'),
	('Space Opera','Routledge'),
	('The Girl Who Never Read Noam Chomsky','Routledge'),
	('The Stand','Penguin'),
	('IT','Penguin'),
	('The Lost Tribe','Elsevier'),
	('The Bear and the Nightingale','Penguin'),
	('Binti','Routledge'),
	('A Bollywood Affair','Oxford'),
	('Everfair','Cabridge'),
	('Dragonfish','Oxford'),
	('An Extraordinary Union','Penguin'),
	('The Great Influenza','Cabridge'),
	('As Bright as Heaven','Penguin'),
	('How It Went Down','Oxford'),
	('March: Book One','Elsevier'),
	('Mr. Fox','Routledge')
;

INSERT INTO BOOK_AUTHORS
	(BookId,AuthorName)
	VALUES
	('1','Jay Asher'),
	('2','Raina Telgemeier'),
	('3','Khaled Hosseini'),
	('4','Alex Gino'),
	('5','Harper Lee'),
	('6','Angie Thomas'),
	('7','Jessica Herthel'),
	('8','Sharon Solwitz'),
	('9','Jonathan Eig'),
	('10','Mary Losure'),
	('11','Marcus Wicker'),
	('12','Curtis Dawkins'),
	('13','Lesley Nneka Arimah'),
	('14','Catherynne M. Valente'),
	('15','Jana Casale'),
	('16','Stephen King'),
	('17','Stephen King'),
	('18','Mark Lee'),
	('19','Katherine Arden'),
	('20','Nnedi Okorafor'),
	('21','Sonali Dev'),
	('22','Nisi Shawl'),
	('23','Vu Tran'),
	('24','Alyssa Cole'),
	('25','John M. Barry'),
	('26','Susan Meissner'),
	('27','Kekla Magoon'),
	('28','John Lewis'),
	('29','Helen Oyeyemi')
;

INSERT INTO BORROWER
	(Name,Address,Phone)
	VALUES
	('Steve Rogers','2757 New St. Eugene, OR 97401','667-213-2439'),
	('Tony Stark','626 Broadway St. Eugene, OR 97401','623-212-4128'),
	('Thor Odinsson','4101 Coburn Hollow Rd. Eugene, OR 97401','720-881-5700'),
	('TChalla','11 Romrog Way Eugene, OR 97401','559-504-7323'),
	('Natasha Romanov','3383 Green St. Eugene, OR 97401','585-291-2260'),
	('Shuri','253 University St. Eugene, OR 97401','404-898-3550'),
	('Carol Danvers','379 Spirit Dr. Eugene, OR 97401','318-314-2913'),
	('Peter Parker','2529 Orchard St. Eugene, OR 97401','551-427-5742')
;

INSERT INTO BOOK_COPIES
	(BookId,BranchId,No_Of_Copies)
	VALUES
	('18','1','2'),
	('29','1','4'),
	('12','1','3'),
	('6','1','2'),
	('2','1','2'),
	('17','1','4'),
	('28','1','3'),
	('15','1','3'),
	('14','1','7'),
	('13','1','2'),
	('16','2','2'),
	('1','2','4'),
	('8','2','3'),
	('17','2','3'),
	('5','2','2'),
	('4','2','2'),
	('19','2','4'),
	('22','2','3'),
	('23','2','3'),
	('10','2','7'),
	('11','2','2'),
	('15','3','2'),
	('3','3','4'),
	('5','3','3'),
	('4','3','2'),
	('16','3','2'),
	('14','3','4'),
	('19','3','3'),
	('24','3','3'),
	('25','3','7'),
	('28','3','2'),
	('2','4','2'),
	('1','4','4'),
	('11','4','3'),
	('17','4','2'),
	('23','4','2'),
	('26','4','4'),
	('18','4','3'),
	('13','4','3'),
	('29','4','7'),
	('9','4','2')
;

INSERT INTO BOOK_LOANS
	(BookId,BranchId,CardNo,DateOut,DueDate)
	VALUES
	('14','1','4','20180416','20180425'),
	('10','2','6','20180416','20180425'),
	('25','3','3','20180416','20180425'),
	('29','4','4','20180412','20180424'),
	('26','4','4','20180412','20180424'),
	('1','4','6','20180412','20180424'),
	('14','3','4','20180411','20180423'),
	('3','3','5','20180411','20180423'),
	('19','2','6','20180411','20180423'),
	('1','2','4','20180410','20180422'),
	('17','1','1','20180410','20180422'),
	('29','1','4','20180410','20180422'),
	('12','1','6','20180409','20180421'),
	('28','1','6','20180408','20180420'),
	('15','1','6','20180407','20180416'),
	('8','2','5','20180406','20180416'),
	('22','2','1','20180405','20180408'),
	('9','4','4','20180404','20180407'),
	('17','4','2','20180330','20180404'),
	('23','4','3','20180329','20180403'),
	('28','3','1','20180325','20180428'),
	('2','4','7','20180325','20180426'),
	('4','3','8','20180323','20180325'),
	('16','3','5','20180322','20180320'),
	('11','2','6','20180315','20180319'),
	('15','3','4','20180306','20180318'),
	('5','2','2','20180305','20180316'),
	('4','2','3','20180304','20180308'),
	('13','1','1','20180228','20180307'),
	('16','2','7','20180228','20180304'),
	('3','3','8','20180225','20180303'),
	('19','2','5','20180225','20180328'),
	('1','2','6','20180223','20180326'),
	('17','1','4','20180222','20180225'),
	('29','1','2','20180215','20180220'),
	('12','1','3','20180206','20180219'),
	('28','1','1','20180205','20180218'),
	('14','1','7','20180204','20180216'),
	('10','2','8','20180130','20180208'),
	('25','3','5','20180129','20180207'),
	('29','4','6','20180125','20180204'),
	('26','4','4','20180125','20180203'),
	('15','1','2','20180125','20180203'),
	('8','2','3','20180123','20180128'),
	('6','1','1','20180123','20180128'),
	('2','1','7','20180123','20180128'),
	('23','2','8','20180122','20180126'),
	('5','3','5','20180122','20180126'),
	('19','3','6','20180115','20180125'),
	('24','3','4','20180106','20180120'),
	('11','4','3','20180106','20180120'),
	('18','4','2','20180105','20180119'),
	('13','4','1','20180104','20180118')
;

SELECT * FROM PUBLISHER;
SELECT * FROM LIBRARY_BRANCH;
SELECT * FROM BOOK;
SELECT * FROM BOOK_AUTHORS;
SELECT * FROM BORROWER;
SELECT * FROM BOOK_COPIES;
SELECT * FROM BOOK_LOANS;

