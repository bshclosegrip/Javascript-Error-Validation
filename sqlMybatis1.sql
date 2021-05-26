-- 게시판 쿼리

-- 조회(findStr, startNo, endNo) : id(search)
SELECT * from(
	SELECT rownum rno, m.* from(
		SELECT serial, pserial, lpad(' ' , (LEVEL-1)*4, ' └ ') || subject subject, 
		       mid, mDate, hit, 
			   (SELECT count(serial) FROM boardAtt WHERE b.serial=pserial) attCnt
		FROM board b
		WHERE subject LIKE '%%'
		OR    doc     LIKE '%%'
		START with pserial IS NULL
		CONNECT BY PRIOR serial = pserial
		ORDER siblings BY serial DESC )m
)WHERE rno BETWEEN 5 AND 10;

-- 삭제(serial) : board, boardAtt : id(brd_delete, brdAtt_delete)
DELETE FROM board WHERE serial=999 AND mid='ao01' AND pwd='111';
DELETE FROM boardAtt WHERE pserial=999 AND sysAtt='a.png';

-- 입력(BoardVo) :board, boardAtt(첨부파일이 있는경우) : id(brd_insert, brdAtt_insert)
INSERT INTO board(serial,pserial, subject, doc, mid, pwd, mdate, hit )
values(seq_board.nextval, 999, '방가', '내용', 'a001', '1111', sysdate, 0);

INSERT INTO boardAtt(serial , pserial, oriAtt, sysAtt)
values(seq_boardAtt.nextval, 999, 'a.png', 'a.png');

-- 답글(BoardVo) : id(brd_repl, brdAtt_repl)
-- board.pserial값은 원본글의 serial값
-- boardAtt.pseriald은 board.serail
INSERT INTO board(serial,pserial, subject, doc, mid, pwd, mdate, hit )
values(seq_board.nextval, 999, '방가', '내용', 'a001', '1111', sysdate, 0);

INSERT INTO boardAtt(serial , pserial, oriAtt, sysAtt)
values(seq_boardAtt.nextval, 999, 'a.png', 'a.png');

-- 수정(BoardVo) : board, boardAtt(삭제및 수정) : id(brd_update, brdAtt_delete2, brdAtt_insert2)
-- 첨부파일의 내용이 변경된 경우 기존 데이터는 삭제 후 첨부 추가
UPDATE board SET subject = '제목', doc='수정된 내용' WHERE serial=999 AND mid = 'hong' AND pwd='1111'

DELETE FROM boardAtt WHERE sysAtt='a.png' AND pserail=board.serial
INSERT INTO boardAtt(serial , pserial, oriAtt, sysAtt)
values(seq_boardAtt.nextval, 999, 'a.png', 'a.png');
