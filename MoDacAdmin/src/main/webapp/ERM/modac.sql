
/* Drop Tables */

DROP TABLE genfamily CASCADE CONSTRAINTS;
DROP TABLE healthanswer CASCADE CONSTRAINTS;
DROP TABLE healthquestion CASCADE CONSTRAINTS;
DROP TABLE replyqna CASCADE CONSTRAINTS;
DROP TABLE qna CASCADE CONSTRAINTS;
DROP TABLE reception CASCADE CONSTRAINTS;
DROP TABLE reservation CASCADE CONSTRAINTS;
DROP TABLE genmember CASCADE CONSTRAINTS;
DROP TABLE healthinfo CASCADE CONSTRAINTS;
DROP TABLE healthinfocategory CASCADE CONSTRAINTS;
DROP TABLE healthstate CASCADE CONSTRAINTS;
DROP TABLE hossubject CASCADE CONSTRAINTS;
DROP TABLE preplyqna CASCADE CONSTRAINTS;
DROP TABLE pqna CASCADE CONSTRAINTS;
DROP TABLE tempdayoff CASCADE CONSTRAINTS;
DROP TABLE partners CASCADE CONSTRAINTS;
DROP TABLE hospital CASCADE CONSTRAINTS;
DROP TABLE managers CASCADE CONSTRAINTS;
DROP TABLE nightpharmacy CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE pharmacy CASCADE CONSTRAINTS;
DROP TABLE subject CASCADE CONSTRAINTS;




/* Create Tables */

-- 가족정보
CREATE TABLE genfamily
(
	-- 가족번호 : seq
	-- 
	fno number NOT NULL,
	-- 아이디 : 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	-- 가족이름
	fname nvarchar2(10) NOT NULL,
	-- 가족생년월일
	fbirthdate char(10) NOT NULL,
	-- 가족성별
	fgender char NOT NULL,
	-- 가족연락처
	fphone char(11),
	PRIMARY KEY (fno)
);


-- 일반사용자
CREATE TABLE genmember
(
	-- 아이디 : 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	-- 일반사용자비밀번호
	pwd varchar2(20) NOT NULL,
	-- 일반사용자이름
	genname nvarchar2(10) NOT NULL,
	-- 일반생년월일
	birthdate char(10) NOT NULL,
	-- 일반성별
	gender char NOT NULL,
	-- 일반이메일주소
	email varchar2(30),
	-- 일반가입일
	joindate date DEFAULT SYSDATE,
	-- 일반주소
	addr nvarchar2(100) NOT NULL,
	-- 일반연락처
	phone char(11) NOT NULL,
	PRIMARY KEY (genid)
);


-- 건강문의답글
CREATE TABLE healthanswer
(
	-- 건강답글번호
	ano nvarchar2(50) NOT NULL,
	-- 건강답글제목
	atitle nvarchar2(50) NOT NULL,
	-- 건강답글작성일
	apostdsate date DEFAULT SYSDATE,
	-- 건강문의글번호
	qno number NOT NULL,
	-- 제휴아이디
	pid varchar2(20) NOT NULL,
	PRIMARY KEY (ano)
);


-- 건강정보글
CREATE TABLE healthinfo
(
	-- 건강정보글번호 : 건강정보글seq번호
	healthinfono number NOT NULL,
	-- 카테고리번호 : 카테고리seq번호
	categno number NOT NULL,
	-- 건강정보글제목
	title nvarchar2(30) NOT NULL,
	-- 건강정보내용
	content nvarchar2(2000),
	-- 등록일
	postdate date DEFAULT SYSDATE,
	-- 건강정보이미지
	image nvarchar2(100),
	PRIMARY KEY (healthinfono)
);


-- 건강정보카테고리
CREATE TABLE healthinfocategory
(
	-- 카테고리번호 : 카테고리seq번호
	categno number NOT NULL,
	-- 카테고리설명글
	explanation nvarchar2(1000),
	-- 카테고리이름
	categname nvarchar2(20) NOT NULL,
	-- 카테고리이미지
	catgimage nvarchar2(100),
	PRIMARY KEY (categno)
);


-- 건강문의
CREATE TABLE healthquestion
(
	-- 건강문의글번호
	qno number NOT NULL,
	-- 건강문의작성일
	postdate date DEFAULT SYSDATE,
	-- 건강문의제목
	title nvarchar2(50) NOT NULL,
	-- 아이디 : 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	-- 진료과목코드
	subjectcode number NOT NULL,
	PRIMARY KEY (qno)
);


-- 건강상태
CREATE TABLE healthstate
(
	-- 가족구분아이디 : 가족번호 또는 일반사용자아이디
	hsid varchar2(20) NOT NULL,
	-- 키
	height float NOT NULL,
	-- 체중
	weight float NOT NULL,
	-- 복용중인약
	medicine nvarchar2(100),
	-- 혈액형
	bloodtype char(4) NOT NULL,
	-- 임신가능성여부
	pregnant char,
	-- 기타특이사항
	etc nvarchar2(300),
	PRIMARY KEY (hsid)
);


-- 병원
CREATE TABLE hospital
(
	-- 병원넘버 : seq
	hosno number NOT NULL,
	-- 병원주소
	hosaddr nvarchar2(100) NOT NULL,
	-- 병원이름
	hosname nvarchar2(50) NOT NULL,
	-- 병원연락처
	hosphone char(13) NOT NULL,
	-- 월진료시간
	mon nvarchar2(10),
	-- 화
	tue nvarchar2(10),
	-- 수
	wed nvarchar2(10),
	-- 목
	thu nvarchar2(10),
	-- 금
	fri nvarchar2(10),
	-- 토
	sat nvarchar2(10),
	-- 일진료시간
	sun nvarchar2(10),
	-- 공휴일진료시간
	holiday nvarchar2(10),
	PRIMARY KEY (hosno)
);


-- 병원진료과목
CREATE TABLE hossubject
(
	-- 진료과목코드
	subjectcode number NOT NULL,
	-- 병원넘버 : seq
	hosno number NOT NULL
);


-- 관리자
CREATE TABLE managers
(
	-- 관리자아이디
	mid varchar2(20) NOT NULL,
	-- 관리자이름
	mname nvarchar2(10) NOT NULL,
	-- 관리자비밀번호
	mpwd varchar2(20) NOT NULL,
	PRIMARY KEY (mid)
);


-- 심야약국
CREATE TABLE nightpharmacy
(
	-- 심야약국넘버 : seq
	-- 
	nphno number NOT NULL,
	-- 심야약국이름
	nphname nvarchar2(50) NOT NULL,
	-- 심야약국주소
	nphaddr nvarchar2(100) NOT NULL,
	-- 심야공휴일영업
	npholiday nvarchar2(10),
	-- 심야약국전화번호
	nphphone varchar2(11) NOT NULL,
	-- 심약월요일
	nphmon nvarchar2(10),
	-- 심약화요일
	nphtue nvarchar2(10),
	-- 심약수요일
	nphwed nvarchar2(10),
	-- 심약목요일
	nphthu nvarchar2(10),
	-- 심약금요일
	nphfri nvarchar2(10),
	-- 심약토요일
	nphsat nvarchar2(10),
	-- 심약일요일
	nphsun nvarchar2(10),
	PRIMARY KEY (nphno)
);


-- 공지사항
CREATE TABLE notice
(
	-- 공지글번호 : 공지사항seq번호
	no number NOT NULL,
	-- 공지글제목
	title nvarchar2(10) NOT NULL,
	-- 공지등록일
	postdate date DEFAULT SYSDATE,
	-- 공지내용 : 
	-- 
	content nvarchar2(2000),
	PRIMARY KEY (no)
);


-- 제휴사용자
CREATE TABLE partners
(
	-- 제휴아이디
	pid varchar2(20) NOT NULL,
	-- 병원넘버 : seq
	hosno number NOT NULL,
	-- 제휴이메일주소
	pemail varchar2(30) NOT NULL,
	-- 병원패스워드
	hpwd varchar2(20) NOT NULL,
	-- 사업자등록번호
	businessnum char(12) NOT NULL,
	-- 요청사항
	request nvarchar2(300),
	-- 신청허가여부 : Y/N
	accept char(1) DEFAULT 'N' NOT NULL,
	-- 병원안내
	info nvarchar2(500),
	-- 병원관리자이름
	hosmanager nvarchar2(10) NOT NULL,
	-- 병원관리자연락처
	hosphone char(11) NOT NULL,
	-- 점심시간
	lunch char(10),
	-- 병원사이트주소
	pwebsite varchar2(50),
	PRIMARY KEY (pid)
);


-- 약국
CREATE TABLE pharmacy
(
	-- 약국넘버 : seq
	-- 
	phno number NOT NULL,
	-- 약국이름
	phname nvarchar2(50) NOT NULL,
	-- 약국주소
	phaddr nvarchar2(100) NOT NULL,
	-- 공휴일영업
	pholiday nvarchar2(10),
	-- 약국전화번호
	phphone varchar2(11) NOT NULL,
	-- 약국월요일
	phmon nvarchar2(10),
	-- 약국화요일
	phtue nvarchar2(10),
	-- 약국수요일
	phwed nvarchar2(10),
	-- 약국목요일
	phthu nvarchar2(10),
	-- 약국금요일
	phfri nvarchar2(10),
	-- 약국토요일
	phsat nvarchar2(10),
	-- 약국일요일
	phsun nvarchar2(10) UNIQUE,
	PRIMARY KEY (phno)
);


-- 문의사항
CREATE TABLE pqna
(
	-- 문의글번호 : seq
	no number NOT NULL,
	-- 제휴아이디
	pid varchar2(20) NOT NULL,
	-- 문의글제목
	title nvarchar2(50) NOT NULL,
	-- p문의글내용
	content nvarchar2(2000) NOT NULL,
	-- 문의글작성일
	postadate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (no)
);


-- 문의답글
CREATE TABLE preplyqna
(
	-- 답글번호
	rno number NOT NULL,
	-- 문의글번호 : seq
	no number NOT NULL,
	-- 답글내용
	rcontents nvarchar2(2000) NOT NULL,
	-- 답글작성일
	replydate date DEFAULT SYSDATE,
	PRIMARY KEY (rno)
);


-- 문의사항
CREATE TABLE qna
(
	-- 문의글번호 : seq
	no number NOT NULL,
	-- 문의글제목
	title nvarchar2(50) NOT NULL,
	-- 문의글내용
	content nvarchar2(2000) NOT NULL,
	-- 문의글작성일
	postadate date DEFAULT SYSDATE NOT NULL,
	-- 아이디 : 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	PRIMARY KEY (no)
);


-- 새 테이블
CREATE TABLE reception
(
	-- 아이디 : 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	-- 제휴아이디
	pid varchar2(20) NOT NULL,
	-- 접수번호 : seq
	recnum number NOT NULL,
	-- 접수대상자이름
	recname nvarchar2(10) NOT NULL,
	-- 일반이메일주소
	email varchar2(30),
	-- 일반연락처
	phone char(11),
	-- 접수내용
	reccontents nvarchar2(500),
	-- 일반주소
	addr nvarchar2(100) NOT NULL
);


-- 문의답글
CREATE TABLE replyqna
(
	-- 답글번호
	rno number NOT NULL,
	-- 답글내용
	rcontents nvarchar2(2000) NOT NULL,
	-- 답글작성일
	replydate date DEFAULT SYSDATE,
	-- 문의글번호 : seq
	no number NOT NULL,
	PRIMARY KEY (rno)
);


-- 새 테이블
CREATE TABLE reservation
(
	-- 예약번호 : seq
	resnum number NOT NULL,
	-- 아이디 : 가족번호 또는 일반사용자아이디
	genid varchar2(20) NOT NULL,
	-- 제휴아이디
	pid varchar2(20) NOT NULL,
	-- 예약내용
	rescontents nvarchar2(500),
	-- 예약대상자이름
	resname nvarchar2(10) NOT NULL,
	-- 일반연락처
	phone char(11) NOT NULL,
	-- 일반주소
	addr nvarchar2(100) NOT NULL,
	-- 예약처리상태
	resaccept nvarchar2(15) DEFAULT '예약대기중' NOT NULL,
	-- 예약일시
	resdate char(22) NOT NULL,
	-- 일반이메일주소
	email varchar2(30),
	PRIMARY KEY (resnum)
);


-- 진료과목
CREATE TABLE subject
(
	-- 진료과목코드
	subjectcode number NOT NULL,
	-- 진료과목이름
	subname nvarchar2(20) NOT NULL,
	PRIMARY KEY (subjectcode)
);


-- 임시휴일
CREATE TABLE tempdayoff
(
	-- 제휴아이디
	pid varchar2(20) NOT NULL,
	-- 임시휴무일
	dayoff varchar2(30),
	-- 휴일마지막날 : 마지막날 이후 자동으로 삭제하기 위함
	lastdate nvarchar2(10) NOT NULL
);



/* Create Foreign Keys */

ALTER TABLE genfamily
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE healthquestion
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE qna
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE reception
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (genid)
	REFERENCES genmember (genid)
;


ALTER TABLE healthinfo
	ADD FOREIGN KEY (categno)
	REFERENCES healthinfocategory (categno)
;


ALTER TABLE healthanswer
	ADD FOREIGN KEY (qno)
	REFERENCES healthquestion (qno)
;


ALTER TABLE hossubject
	ADD FOREIGN KEY (hosno)
	REFERENCES hospital (hosno)
;


ALTER TABLE partners
	ADD FOREIGN KEY (hosno)
	REFERENCES hospital (hosno)
;


ALTER TABLE healthanswer
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE pqna
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE reception
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE tempdayoff
	ADD FOREIGN KEY (pid)
	REFERENCES partners (pid)
;


ALTER TABLE preplyqna
	ADD FOREIGN KEY (no)
	REFERENCES pqna (no)
;


ALTER TABLE replyqna
	ADD FOREIGN KEY (no)
	REFERENCES qna (no)
;


ALTER TABLE healthquestion
	ADD FOREIGN KEY (subjectcode)
	REFERENCES subject (subjectcode)
;


ALTER TABLE hossubject
	ADD FOREIGN KEY (subjectcode)
	REFERENCES subject (subjectcode)
;



/* Comments */

COMMENT ON TABLE genfamily IS '가족정보';
COMMENT ON COLUMN genfamily.fno IS '가족번호 : seq
';
COMMENT ON COLUMN genfamily.genid IS '아이디 : 가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN genfamily.fname IS '가족이름';
COMMENT ON COLUMN genfamily.fbirthdate IS '가족생년월일';
COMMENT ON COLUMN genfamily.fgender IS '가족성별';
COMMENT ON COLUMN genfamily.fphone IS '가족연락처';
COMMENT ON TABLE genmember IS '일반사용자';
COMMENT ON COLUMN genmember.genid IS '아이디 : 가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN genmember.pwd IS '일반사용자비밀번호';
COMMENT ON COLUMN genmember.genname IS '일반사용자이름';
COMMENT ON COLUMN genmember.birthdate IS '일반생년월일';
COMMENT ON COLUMN genmember.gender IS '일반성별';
COMMENT ON COLUMN genmember.email IS '일반이메일주소';
COMMENT ON COLUMN genmember.joindate IS '일반가입일';
COMMENT ON COLUMN genmember.addr IS '일반주소';
COMMENT ON COLUMN genmember.phone IS '일반연락처';
COMMENT ON TABLE healthanswer IS '건강문의답글';
COMMENT ON COLUMN healthanswer.ano IS '건강답글번호';
COMMENT ON COLUMN healthanswer.atitle IS '건강답글제목';
COMMENT ON COLUMN healthanswer.apostdsate IS '건강답글작성일';
COMMENT ON COLUMN healthanswer.qno IS '건강문의글번호';
COMMENT ON COLUMN healthanswer.pid IS '제휴아이디';
COMMENT ON TABLE healthinfo IS '건강정보글';
COMMENT ON COLUMN healthinfo.healthinfono IS '건강정보글번호 : 건강정보글seq번호';
COMMENT ON COLUMN healthinfo.categno IS '카테고리번호 : 카테고리seq번호';
COMMENT ON COLUMN healthinfo.title IS '건강정보글제목';
COMMENT ON COLUMN healthinfo.content IS '건강정보내용';
COMMENT ON COLUMN healthinfo.postdate IS '등록일';
COMMENT ON COLUMN healthinfo.image IS '건강정보이미지';
COMMENT ON TABLE healthinfocategory IS '건강정보카테고리';
COMMENT ON COLUMN healthinfocategory.categno IS '카테고리번호 : 카테고리seq번호';
COMMENT ON COLUMN healthinfocategory.explanation IS '카테고리설명글';
COMMENT ON COLUMN healthinfocategory.categname IS '카테고리이름';
COMMENT ON COLUMN healthinfocategory.catgimage IS '카테고리이미지';
COMMENT ON TABLE healthquestion IS '건강문의';
COMMENT ON COLUMN healthquestion.qno IS '건강문의글번호';
COMMENT ON COLUMN healthquestion.postdate IS '건강문의작성일';
COMMENT ON COLUMN healthquestion.title IS '건강문의제목';
COMMENT ON COLUMN healthquestion.genid IS '아이디 : 가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN healthquestion.subjectcode IS '진료과목코드';
COMMENT ON TABLE healthstate IS '건강상태';
COMMENT ON COLUMN healthstate.hsid IS '가족구분아이디 : 가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN healthstate.height IS '키';
COMMENT ON COLUMN healthstate.weight IS '체중';
COMMENT ON COLUMN healthstate.medicine IS '복용중인약';
COMMENT ON COLUMN healthstate.bloodtype IS '혈액형';
COMMENT ON COLUMN healthstate.pregnant IS '임신가능성여부';
COMMENT ON COLUMN healthstate.etc IS '기타특이사항';
COMMENT ON TABLE hospital IS '병원';
COMMENT ON COLUMN hospital.hosno IS '병원넘버 : seq';
COMMENT ON COLUMN hospital.hosaddr IS '병원주소';
COMMENT ON COLUMN hospital.hosname IS '병원이름';
COMMENT ON COLUMN hospital.hosphone IS '병원연락처';
COMMENT ON COLUMN hospital.mon IS '월진료시간';
COMMENT ON COLUMN hospital.tue IS '화';
COMMENT ON COLUMN hospital.wed IS '수';
COMMENT ON COLUMN hospital.thu IS '목';
COMMENT ON COLUMN hospital.fri IS '금';
COMMENT ON COLUMN hospital.sat IS '토';
COMMENT ON COLUMN hospital.sun IS '일진료시간';
COMMENT ON COLUMN hospital.holiday IS '공휴일진료시간';
COMMENT ON TABLE hossubject IS '병원진료과목';
COMMENT ON COLUMN hossubject.subjectcode IS '진료과목코드';
COMMENT ON COLUMN hossubject.hosno IS '병원넘버 : seq';
COMMENT ON TABLE managers IS '관리자';
COMMENT ON COLUMN managers.mid IS '관리자아이디';
COMMENT ON COLUMN managers.mname IS '관리자이름';
COMMENT ON COLUMN managers.mpwd IS '관리자비밀번호';
COMMENT ON TABLE nightpharmacy IS '심야약국';
COMMENT ON COLUMN nightpharmacy.nphno IS '심야약국넘버 : seq
';
COMMENT ON COLUMN nightpharmacy.nphname IS '심야약국이름';
COMMENT ON COLUMN nightpharmacy.nphaddr IS '심야약국주소';
COMMENT ON COLUMN nightpharmacy.npholiday IS '심야공휴일영업';
COMMENT ON COLUMN nightpharmacy.nphphone IS '심야약국전화번호';
COMMENT ON COLUMN nightpharmacy.nphmon IS '심약월요일';
COMMENT ON COLUMN nightpharmacy.nphtue IS '심약화요일';
COMMENT ON COLUMN nightpharmacy.nphwed IS '심약수요일';
COMMENT ON COLUMN nightpharmacy.nphthu IS '심약목요일';
COMMENT ON COLUMN nightpharmacy.nphfri IS '심약금요일';
COMMENT ON COLUMN nightpharmacy.nphsat IS '심약토요일';
COMMENT ON COLUMN nightpharmacy.nphsun IS '심약일요일';
COMMENT ON TABLE notice IS '공지사항';
COMMENT ON COLUMN notice.no IS '공지글번호 : 공지사항seq번호';
COMMENT ON COLUMN notice.title IS '공지글제목';
COMMENT ON COLUMN notice.postdate IS '공지등록일';
COMMENT ON COLUMN notice.content IS '공지내용 : 
';
COMMENT ON TABLE partners IS '제휴사용자';
COMMENT ON COLUMN partners.pid IS '제휴아이디';
COMMENT ON COLUMN partners.hosno IS '병원넘버 : seq';
COMMENT ON COLUMN partners.pemail IS '제휴이메일주소';
COMMENT ON COLUMN partners.hpwd IS '병원패스워드';
COMMENT ON COLUMN partners.businessnum IS '사업자등록번호';
COMMENT ON COLUMN partners.request IS '요청사항';
COMMENT ON COLUMN partners.accept IS '신청허가여부 : Y/N';
COMMENT ON COLUMN partners.info IS '병원안내';
COMMENT ON COLUMN partners.hosmanager IS '병원관리자이름';
COMMENT ON COLUMN partners.hosphone IS '병원관리자연락처';
COMMENT ON COLUMN partners.lunch IS '점심시간';
COMMENT ON COLUMN partners.pwebsite IS '병원사이트주소';
COMMENT ON TABLE pharmacy IS '약국';
COMMENT ON COLUMN pharmacy.phno IS '약국넘버 : seq
';
COMMENT ON COLUMN pharmacy.phname IS '약국이름';
COMMENT ON COLUMN pharmacy.phaddr IS '약국주소';
COMMENT ON COLUMN pharmacy.pholiday IS '공휴일영업';
COMMENT ON COLUMN pharmacy.phphone IS '약국전화번호';
COMMENT ON COLUMN pharmacy.phmon IS '약국월요일';
COMMENT ON COLUMN pharmacy.phtue IS '약국화요일';
COMMENT ON COLUMN pharmacy.phwed IS '약국수요일';
COMMENT ON COLUMN pharmacy.phthu IS '약국목요일';
COMMENT ON COLUMN pharmacy.phfri IS '약국금요일';
COMMENT ON COLUMN pharmacy.phsat IS '약국토요일';
COMMENT ON COLUMN pharmacy.phsun IS '약국일요일';
COMMENT ON TABLE pqna IS '문의사항';
COMMENT ON COLUMN pqna.no IS '문의글번호 : seq';
COMMENT ON COLUMN pqna.pid IS '제휴아이디';
COMMENT ON COLUMN pqna.title IS '문의글제목';
COMMENT ON COLUMN pqna.content IS 'p문의글내용';
COMMENT ON COLUMN pqna.postadate IS '문의글작성일';
COMMENT ON TABLE preplyqna IS '문의답글';
COMMENT ON COLUMN preplyqna.rno IS '답글번호';
COMMENT ON COLUMN preplyqna.no IS '문의글번호 : seq';
COMMENT ON COLUMN preplyqna.rcontents IS '답글내용';
COMMENT ON COLUMN preplyqna.replydate IS '답글작성일';
COMMENT ON TABLE qna IS '문의사항';
COMMENT ON COLUMN qna.no IS '문의글번호 : seq';
COMMENT ON COLUMN qna.title IS '문의글제목';
COMMENT ON COLUMN qna.content IS '문의글내용';
COMMENT ON COLUMN qna.postadate IS '문의글작성일';
COMMENT ON COLUMN qna.genid IS '아이디 : 가족번호 또는 일반사용자아이디';
COMMENT ON TABLE reception IS '새 테이블';
COMMENT ON COLUMN reception.genid IS '아이디 : 가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN reception.pid IS '제휴아이디';
COMMENT ON COLUMN reception.recnum IS '접수번호 : seq';
COMMENT ON COLUMN reception.recname IS '접수대상자이름';
COMMENT ON COLUMN reception.email IS '일반이메일주소';
COMMENT ON COLUMN reception.phone IS '일반연락처';
COMMENT ON COLUMN reception.reccontents IS '접수내용';
COMMENT ON COLUMN reception.addr IS '일반주소';
COMMENT ON TABLE replyqna IS '문의답글';
COMMENT ON COLUMN replyqna.rno IS '답글번호';
COMMENT ON COLUMN replyqna.rcontents IS '답글내용';
COMMENT ON COLUMN replyqna.replydate IS '답글작성일';
COMMENT ON COLUMN replyqna.no IS '문의글번호 : seq';
COMMENT ON TABLE reservation IS '새 테이블';
COMMENT ON COLUMN reservation.resnum IS '예약번호 : seq';
COMMENT ON COLUMN reservation.genid IS '아이디 : 가족번호 또는 일반사용자아이디';
COMMENT ON COLUMN reservation.pid IS '제휴아이디';
COMMENT ON COLUMN reservation.rescontents IS '예약내용';
COMMENT ON COLUMN reservation.resname IS '예약대상자이름';
COMMENT ON COLUMN reservation.phone IS '일반연락처';
COMMENT ON COLUMN reservation.addr IS '일반주소';
COMMENT ON COLUMN reservation.resaccept IS '예약처리상태';
COMMENT ON COLUMN reservation.resdate IS '예약일시';
COMMENT ON COLUMN reservation.email IS '일반이메일주소';
COMMENT ON TABLE subject IS '진료과목';
COMMENT ON COLUMN subject.subjectcode IS '진료과목코드';
COMMENT ON COLUMN subject.subname IS '진료과목이름';
COMMENT ON TABLE tempdayoff IS '임시휴일';
COMMENT ON COLUMN tempdayoff.pid IS '제휴아이디';
COMMENT ON COLUMN tempdayoff.dayoff IS '임시휴무일';
COMMENT ON COLUMN tempdayoff.lastdate IS '휴일마지막날 : 마지막날 이후 자동으로 삭제하기 위함';



