
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

-- ��������
CREATE TABLE genfamily
(
	-- ������ȣ : seq
	-- 
	fno number NOT NULL,
	-- ���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�
	genid varchar2(20) NOT NULL,
	-- �����̸�
	fname nvarchar2(10) NOT NULL,
	-- �����������
	fbirthdate char(10) NOT NULL,
	-- ��������
	fgender char NOT NULL,
	-- ��������ó
	fphone char(11),
	PRIMARY KEY (fno)
);


-- �Ϲݻ����
CREATE TABLE genmember
(
	-- ���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�
	genid varchar2(20) NOT NULL,
	-- �Ϲݻ���ں�й�ȣ
	pwd varchar2(20) NOT NULL,
	-- �Ϲݻ�����̸�
	genname nvarchar2(10) NOT NULL,
	-- �Ϲݻ������
	birthdate char(10) NOT NULL,
	-- �Ϲݼ���
	gender char NOT NULL,
	-- �Ϲ��̸����ּ�
	email varchar2(30),
	-- �Ϲݰ�����
	joindate date DEFAULT SYSDATE,
	-- �Ϲ��ּ�
	addr nvarchar2(100) NOT NULL,
	-- �Ϲݿ���ó
	phone char(11) NOT NULL,
	PRIMARY KEY (genid)
);


-- �ǰ����Ǵ��
CREATE TABLE healthanswer
(
	-- �ǰ���۹�ȣ
	ano nvarchar2(50) NOT NULL,
	-- �ǰ��������
	atitle nvarchar2(50) NOT NULL,
	-- �ǰ�����ۼ���
	apostdsate date DEFAULT SYSDATE,
	-- �ǰ����Ǳ۹�ȣ
	qno number NOT NULL,
	-- ���޾��̵�
	pid varchar2(20) NOT NULL,
	PRIMARY KEY (ano)
);


-- �ǰ�������
CREATE TABLE healthinfo
(
	-- �ǰ������۹�ȣ : �ǰ�������seq��ȣ
	healthinfono number NOT NULL,
	-- ī�װ���ȣ : ī�װ�seq��ȣ
	categno number NOT NULL,
	-- �ǰ�����������
	title nvarchar2(30) NOT NULL,
	-- �ǰ���������
	content nvarchar2(2000),
	-- �����
	postdate date DEFAULT SYSDATE,
	-- �ǰ������̹���
	image nvarchar2(100),
	PRIMARY KEY (healthinfono)
);


-- �ǰ�����ī�װ�
CREATE TABLE healthinfocategory
(
	-- ī�װ���ȣ : ī�װ�seq��ȣ
	categno number NOT NULL,
	-- ī�װ������
	explanation nvarchar2(1000),
	-- ī�װ��̸�
	categname nvarchar2(20) NOT NULL,
	-- ī�װ��̹���
	catgimage nvarchar2(100),
	PRIMARY KEY (categno)
);


-- �ǰ�����
CREATE TABLE healthquestion
(
	-- �ǰ����Ǳ۹�ȣ
	qno number NOT NULL,
	-- �ǰ������ۼ���
	postdate date DEFAULT SYSDATE,
	-- �ǰ���������
	title nvarchar2(50) NOT NULL,
	-- ���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�
	genid varchar2(20) NOT NULL,
	-- ��������ڵ�
	subjectcode number NOT NULL,
	PRIMARY KEY (qno)
);


-- �ǰ�����
CREATE TABLE healthstate
(
	-- �������о��̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�
	hsid varchar2(20) NOT NULL,
	-- Ű
	height float NOT NULL,
	-- ü��
	weight float NOT NULL,
	-- �������ξ�
	medicine nvarchar2(100),
	-- ������
	bloodtype char(4) NOT NULL,
	-- �ӽŰ��ɼ�����
	pregnant char,
	-- ��ŸƯ�̻���
	etc nvarchar2(300),
	PRIMARY KEY (hsid)
);


-- ����
CREATE TABLE hospital
(
	-- �����ѹ� : seq
	hosno number NOT NULL,
	-- �����ּ�
	hosaddr nvarchar2(100) NOT NULL,
	-- �����̸�
	hosname nvarchar2(50) NOT NULL,
	-- ��������ó
	hosphone char(13) NOT NULL,
	-- ������ð�
	mon nvarchar2(10),
	-- ȭ
	tue nvarchar2(10),
	-- ��
	wed nvarchar2(10),
	-- ��
	thu nvarchar2(10),
	-- ��
	fri nvarchar2(10),
	-- ��
	sat nvarchar2(10),
	-- ������ð�
	sun nvarchar2(10),
	-- ����������ð�
	holiday nvarchar2(10),
	PRIMARY KEY (hosno)
);


-- �����������
CREATE TABLE hossubject
(
	-- ��������ڵ�
	subjectcode number NOT NULL,
	-- �����ѹ� : seq
	hosno number NOT NULL
);


-- ������
CREATE TABLE managers
(
	-- �����ھ��̵�
	mid varchar2(20) NOT NULL,
	-- �������̸�
	mname nvarchar2(10) NOT NULL,
	-- �����ں�й�ȣ
	mpwd varchar2(20) NOT NULL,
	PRIMARY KEY (mid)
);


-- �ɾ߾౹
CREATE TABLE nightpharmacy
(
	-- �ɾ߾౹�ѹ� : seq
	-- 
	nphno number NOT NULL,
	-- �ɾ߾౹�̸�
	nphname nvarchar2(50) NOT NULL,
	-- �ɾ߾౹�ּ�
	nphaddr nvarchar2(100) NOT NULL,
	-- �ɾ߰����Ͽ���
	npholiday nvarchar2(10),
	-- �ɾ߾౹��ȭ��ȣ
	nphphone varchar2(11) NOT NULL,
	-- �ɾ������
	nphmon nvarchar2(10),
	-- �ɾ�ȭ����
	nphtue nvarchar2(10),
	-- �ɾ������
	nphwed nvarchar2(10),
	-- �ɾ�����
	nphthu nvarchar2(10),
	-- �ɾ�ݿ���
	nphfri nvarchar2(10),
	-- �ɾ������
	nphsat nvarchar2(10),
	-- �ɾ��Ͽ���
	nphsun nvarchar2(10),
	PRIMARY KEY (nphno)
);


-- ��������
CREATE TABLE notice
(
	-- �����۹�ȣ : ��������seq��ȣ
	no number NOT NULL,
	-- ����������
	title nvarchar2(10) NOT NULL,
	-- ���������
	postdate date DEFAULT SYSDATE,
	-- �������� : 
	-- 
	content nvarchar2(2000),
	PRIMARY KEY (no)
);


-- ���޻����
CREATE TABLE partners
(
	-- ���޾��̵�
	pid varchar2(20) NOT NULL,
	-- �����ѹ� : seq
	hosno number NOT NULL,
	-- �����̸����ּ�
	pemail varchar2(30) NOT NULL,
	-- �����н�����
	hpwd varchar2(20) NOT NULL,
	-- ����ڵ�Ϲ�ȣ
	businessnum char(12) NOT NULL,
	-- ��û����
	request nvarchar2(300),
	-- ��û�㰡���� : Y/N
	accept char(1) DEFAULT 'N' NOT NULL,
	-- �����ȳ�
	info nvarchar2(500),
	-- �����������̸�
	hosmanager nvarchar2(10) NOT NULL,
	-- ���������ڿ���ó
	hosphone char(11) NOT NULL,
	-- ���ɽð�
	lunch char(10),
	-- ��������Ʈ�ּ�
	pwebsite varchar2(50),
	PRIMARY KEY (pid)
);


-- �౹
CREATE TABLE pharmacy
(
	-- �౹�ѹ� : seq
	-- 
	phno number NOT NULL,
	-- �౹�̸�
	phname nvarchar2(50) NOT NULL,
	-- �౹�ּ�
	phaddr nvarchar2(100) NOT NULL,
	-- �����Ͽ���
	pholiday nvarchar2(10),
	-- �౹��ȭ��ȣ
	phphone varchar2(11) NOT NULL,
	-- �౹������
	phmon nvarchar2(10),
	-- �౹ȭ����
	phtue nvarchar2(10),
	-- �౹������
	phwed nvarchar2(10),
	-- �౹�����
	phthu nvarchar2(10),
	-- �౹�ݿ���
	phfri nvarchar2(10),
	-- �౹�����
	phsat nvarchar2(10),
	-- �౹�Ͽ���
	phsun nvarchar2(10) UNIQUE,
	PRIMARY KEY (phno)
);


-- ���ǻ���
CREATE TABLE pqna
(
	-- ���Ǳ۹�ȣ : seq
	no number NOT NULL,
	-- ���޾��̵�
	pid varchar2(20) NOT NULL,
	-- ���Ǳ�����
	title nvarchar2(50) NOT NULL,
	-- p���Ǳ۳���
	content nvarchar2(2000) NOT NULL,
	-- ���Ǳ��ۼ���
	postadate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (no)
);


-- ���Ǵ��
CREATE TABLE preplyqna
(
	-- ��۹�ȣ
	rno number NOT NULL,
	-- ���Ǳ۹�ȣ : seq
	no number NOT NULL,
	-- ��۳���
	rcontents nvarchar2(2000) NOT NULL,
	-- ����ۼ���
	replydate date DEFAULT SYSDATE,
	PRIMARY KEY (rno)
);


-- ���ǻ���
CREATE TABLE qna
(
	-- ���Ǳ۹�ȣ : seq
	no number NOT NULL,
	-- ���Ǳ�����
	title nvarchar2(50) NOT NULL,
	-- ���Ǳ۳���
	content nvarchar2(2000) NOT NULL,
	-- ���Ǳ��ۼ���
	postadate date DEFAULT SYSDATE NOT NULL,
	-- ���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�
	genid varchar2(20) NOT NULL,
	PRIMARY KEY (no)
);


-- �� ���̺�
CREATE TABLE reception
(
	-- ���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�
	genid varchar2(20) NOT NULL,
	-- ���޾��̵�
	pid varchar2(20) NOT NULL,
	-- ������ȣ : seq
	recnum number NOT NULL,
	-- ����������̸�
	recname nvarchar2(10) NOT NULL,
	-- �Ϲ��̸����ּ�
	email varchar2(30),
	-- �Ϲݿ���ó
	phone char(11),
	-- ��������
	reccontents nvarchar2(500),
	-- �Ϲ��ּ�
	addr nvarchar2(100) NOT NULL
);


-- ���Ǵ��
CREATE TABLE replyqna
(
	-- ��۹�ȣ
	rno number NOT NULL,
	-- ��۳���
	rcontents nvarchar2(2000) NOT NULL,
	-- ����ۼ���
	replydate date DEFAULT SYSDATE,
	-- ���Ǳ۹�ȣ : seq
	no number NOT NULL,
	PRIMARY KEY (rno)
);


-- �� ���̺�
CREATE TABLE reservation
(
	-- �����ȣ : seq
	resnum number NOT NULL,
	-- ���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�
	genid varchar2(20) NOT NULL,
	-- ���޾��̵�
	pid varchar2(20) NOT NULL,
	-- ���೻��
	rescontents nvarchar2(500),
	-- ���������̸�
	resname nvarchar2(10) NOT NULL,
	-- �Ϲݿ���ó
	phone char(11) NOT NULL,
	-- �Ϲ��ּ�
	addr nvarchar2(100) NOT NULL,
	-- ����ó������
	resaccept nvarchar2(15) DEFAULT '��������' NOT NULL,
	-- �����Ͻ�
	resdate char(22) NOT NULL,
	-- �Ϲ��̸����ּ�
	email varchar2(30),
	PRIMARY KEY (resnum)
);


-- �������
CREATE TABLE subject
(
	-- ��������ڵ�
	subjectcode number NOT NULL,
	-- ��������̸�
	subname nvarchar2(20) NOT NULL,
	PRIMARY KEY (subjectcode)
);


-- �ӽ�����
CREATE TABLE tempdayoff
(
	-- ���޾��̵�
	pid varchar2(20) NOT NULL,
	-- �ӽ��޹���
	dayoff varchar2(30),
	-- ���ϸ������� : �������� ���� �ڵ����� �����ϱ� ����
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

COMMENT ON TABLE genfamily IS '��������';
COMMENT ON COLUMN genfamily.fno IS '������ȣ : seq
';
COMMENT ON COLUMN genfamily.genid IS '���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�';
COMMENT ON COLUMN genfamily.fname IS '�����̸�';
COMMENT ON COLUMN genfamily.fbirthdate IS '�����������';
COMMENT ON COLUMN genfamily.fgender IS '��������';
COMMENT ON COLUMN genfamily.fphone IS '��������ó';
COMMENT ON TABLE genmember IS '�Ϲݻ����';
COMMENT ON COLUMN genmember.genid IS '���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�';
COMMENT ON COLUMN genmember.pwd IS '�Ϲݻ���ں�й�ȣ';
COMMENT ON COLUMN genmember.genname IS '�Ϲݻ�����̸�';
COMMENT ON COLUMN genmember.birthdate IS '�Ϲݻ������';
COMMENT ON COLUMN genmember.gender IS '�Ϲݼ���';
COMMENT ON COLUMN genmember.email IS '�Ϲ��̸����ּ�';
COMMENT ON COLUMN genmember.joindate IS '�Ϲݰ�����';
COMMENT ON COLUMN genmember.addr IS '�Ϲ��ּ�';
COMMENT ON COLUMN genmember.phone IS '�Ϲݿ���ó';
COMMENT ON TABLE healthanswer IS '�ǰ����Ǵ��';
COMMENT ON COLUMN healthanswer.ano IS '�ǰ���۹�ȣ';
COMMENT ON COLUMN healthanswer.atitle IS '�ǰ��������';
COMMENT ON COLUMN healthanswer.apostdsate IS '�ǰ�����ۼ���';
COMMENT ON COLUMN healthanswer.qno IS '�ǰ����Ǳ۹�ȣ';
COMMENT ON COLUMN healthanswer.pid IS '���޾��̵�';
COMMENT ON TABLE healthinfo IS '�ǰ�������';
COMMENT ON COLUMN healthinfo.healthinfono IS '�ǰ������۹�ȣ : �ǰ�������seq��ȣ';
COMMENT ON COLUMN healthinfo.categno IS 'ī�װ���ȣ : ī�װ�seq��ȣ';
COMMENT ON COLUMN healthinfo.title IS '�ǰ�����������';
COMMENT ON COLUMN healthinfo.content IS '�ǰ���������';
COMMENT ON COLUMN healthinfo.postdate IS '�����';
COMMENT ON COLUMN healthinfo.image IS '�ǰ������̹���';
COMMENT ON TABLE healthinfocategory IS '�ǰ�����ī�װ�';
COMMENT ON COLUMN healthinfocategory.categno IS 'ī�װ���ȣ : ī�װ�seq��ȣ';
COMMENT ON COLUMN healthinfocategory.explanation IS 'ī�װ������';
COMMENT ON COLUMN healthinfocategory.categname IS 'ī�װ��̸�';
COMMENT ON COLUMN healthinfocategory.catgimage IS 'ī�װ��̹���';
COMMENT ON TABLE healthquestion IS '�ǰ�����';
COMMENT ON COLUMN healthquestion.qno IS '�ǰ����Ǳ۹�ȣ';
COMMENT ON COLUMN healthquestion.postdate IS '�ǰ������ۼ���';
COMMENT ON COLUMN healthquestion.title IS '�ǰ���������';
COMMENT ON COLUMN healthquestion.genid IS '���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�';
COMMENT ON COLUMN healthquestion.subjectcode IS '��������ڵ�';
COMMENT ON TABLE healthstate IS '�ǰ�����';
COMMENT ON COLUMN healthstate.hsid IS '�������о��̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�';
COMMENT ON COLUMN healthstate.height IS 'Ű';
COMMENT ON COLUMN healthstate.weight IS 'ü��';
COMMENT ON COLUMN healthstate.medicine IS '�������ξ�';
COMMENT ON COLUMN healthstate.bloodtype IS '������';
COMMENT ON COLUMN healthstate.pregnant IS '�ӽŰ��ɼ�����';
COMMENT ON COLUMN healthstate.etc IS '��ŸƯ�̻���';
COMMENT ON TABLE hospital IS '����';
COMMENT ON COLUMN hospital.hosno IS '�����ѹ� : seq';
COMMENT ON COLUMN hospital.hosaddr IS '�����ּ�';
COMMENT ON COLUMN hospital.hosname IS '�����̸�';
COMMENT ON COLUMN hospital.hosphone IS '��������ó';
COMMENT ON COLUMN hospital.mon IS '������ð�';
COMMENT ON COLUMN hospital.tue IS 'ȭ';
COMMENT ON COLUMN hospital.wed IS '��';
COMMENT ON COLUMN hospital.thu IS '��';
COMMENT ON COLUMN hospital.fri IS '��';
COMMENT ON COLUMN hospital.sat IS '��';
COMMENT ON COLUMN hospital.sun IS '������ð�';
COMMENT ON COLUMN hospital.holiday IS '����������ð�';
COMMENT ON TABLE hossubject IS '�����������';
COMMENT ON COLUMN hossubject.subjectcode IS '��������ڵ�';
COMMENT ON COLUMN hossubject.hosno IS '�����ѹ� : seq';
COMMENT ON TABLE managers IS '������';
COMMENT ON COLUMN managers.mid IS '�����ھ��̵�';
COMMENT ON COLUMN managers.mname IS '�������̸�';
COMMENT ON COLUMN managers.mpwd IS '�����ں�й�ȣ';
COMMENT ON TABLE nightpharmacy IS '�ɾ߾౹';
COMMENT ON COLUMN nightpharmacy.nphno IS '�ɾ߾౹�ѹ� : seq
';
COMMENT ON COLUMN nightpharmacy.nphname IS '�ɾ߾౹�̸�';
COMMENT ON COLUMN nightpharmacy.nphaddr IS '�ɾ߾౹�ּ�';
COMMENT ON COLUMN nightpharmacy.npholiday IS '�ɾ߰����Ͽ���';
COMMENT ON COLUMN nightpharmacy.nphphone IS '�ɾ߾౹��ȭ��ȣ';
COMMENT ON COLUMN nightpharmacy.nphmon IS '�ɾ������';
COMMENT ON COLUMN nightpharmacy.nphtue IS '�ɾ�ȭ����';
COMMENT ON COLUMN nightpharmacy.nphwed IS '�ɾ������';
COMMENT ON COLUMN nightpharmacy.nphthu IS '�ɾ�����';
COMMENT ON COLUMN nightpharmacy.nphfri IS '�ɾ�ݿ���';
COMMENT ON COLUMN nightpharmacy.nphsat IS '�ɾ������';
COMMENT ON COLUMN nightpharmacy.nphsun IS '�ɾ��Ͽ���';
COMMENT ON TABLE notice IS '��������';
COMMENT ON COLUMN notice.no IS '�����۹�ȣ : ��������seq��ȣ';
COMMENT ON COLUMN notice.title IS '����������';
COMMENT ON COLUMN notice.postdate IS '���������';
COMMENT ON COLUMN notice.content IS '�������� : 
';
COMMENT ON TABLE partners IS '���޻����';
COMMENT ON COLUMN partners.pid IS '���޾��̵�';
COMMENT ON COLUMN partners.hosno IS '�����ѹ� : seq';
COMMENT ON COLUMN partners.pemail IS '�����̸����ּ�';
COMMENT ON COLUMN partners.hpwd IS '�����н�����';
COMMENT ON COLUMN partners.businessnum IS '����ڵ�Ϲ�ȣ';
COMMENT ON COLUMN partners.request IS '��û����';
COMMENT ON COLUMN partners.accept IS '��û�㰡���� : Y/N';
COMMENT ON COLUMN partners.info IS '�����ȳ�';
COMMENT ON COLUMN partners.hosmanager IS '�����������̸�';
COMMENT ON COLUMN partners.hosphone IS '���������ڿ���ó';
COMMENT ON COLUMN partners.lunch IS '���ɽð�';
COMMENT ON COLUMN partners.pwebsite IS '��������Ʈ�ּ�';
COMMENT ON TABLE pharmacy IS '�౹';
COMMENT ON COLUMN pharmacy.phno IS '�౹�ѹ� : seq
';
COMMENT ON COLUMN pharmacy.phname IS '�౹�̸�';
COMMENT ON COLUMN pharmacy.phaddr IS '�౹�ּ�';
COMMENT ON COLUMN pharmacy.pholiday IS '�����Ͽ���';
COMMENT ON COLUMN pharmacy.phphone IS '�౹��ȭ��ȣ';
COMMENT ON COLUMN pharmacy.phmon IS '�౹������';
COMMENT ON COLUMN pharmacy.phtue IS '�౹ȭ����';
COMMENT ON COLUMN pharmacy.phwed IS '�౹������';
COMMENT ON COLUMN pharmacy.phthu IS '�౹�����';
COMMENT ON COLUMN pharmacy.phfri IS '�౹�ݿ���';
COMMENT ON COLUMN pharmacy.phsat IS '�౹�����';
COMMENT ON COLUMN pharmacy.phsun IS '�౹�Ͽ���';
COMMENT ON TABLE pqna IS '���ǻ���';
COMMENT ON COLUMN pqna.no IS '���Ǳ۹�ȣ : seq';
COMMENT ON COLUMN pqna.pid IS '���޾��̵�';
COMMENT ON COLUMN pqna.title IS '���Ǳ�����';
COMMENT ON COLUMN pqna.content IS 'p���Ǳ۳���';
COMMENT ON COLUMN pqna.postadate IS '���Ǳ��ۼ���';
COMMENT ON TABLE preplyqna IS '���Ǵ��';
COMMENT ON COLUMN preplyqna.rno IS '��۹�ȣ';
COMMENT ON COLUMN preplyqna.no IS '���Ǳ۹�ȣ : seq';
COMMENT ON COLUMN preplyqna.rcontents IS '��۳���';
COMMENT ON COLUMN preplyqna.replydate IS '����ۼ���';
COMMENT ON TABLE qna IS '���ǻ���';
COMMENT ON COLUMN qna.no IS '���Ǳ۹�ȣ : seq';
COMMENT ON COLUMN qna.title IS '���Ǳ�����';
COMMENT ON COLUMN qna.content IS '���Ǳ۳���';
COMMENT ON COLUMN qna.postadate IS '���Ǳ��ۼ���';
COMMENT ON COLUMN qna.genid IS '���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�';
COMMENT ON TABLE reception IS '�� ���̺�';
COMMENT ON COLUMN reception.genid IS '���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�';
COMMENT ON COLUMN reception.pid IS '���޾��̵�';
COMMENT ON COLUMN reception.recnum IS '������ȣ : seq';
COMMENT ON COLUMN reception.recname IS '����������̸�';
COMMENT ON COLUMN reception.email IS '�Ϲ��̸����ּ�';
COMMENT ON COLUMN reception.phone IS '�Ϲݿ���ó';
COMMENT ON COLUMN reception.reccontents IS '��������';
COMMENT ON COLUMN reception.addr IS '�Ϲ��ּ�';
COMMENT ON TABLE replyqna IS '���Ǵ��';
COMMENT ON COLUMN replyqna.rno IS '��۹�ȣ';
COMMENT ON COLUMN replyqna.rcontents IS '��۳���';
COMMENT ON COLUMN replyqna.replydate IS '����ۼ���';
COMMENT ON COLUMN replyqna.no IS '���Ǳ۹�ȣ : seq';
COMMENT ON TABLE reservation IS '�� ���̺�';
COMMENT ON COLUMN reservation.resnum IS '�����ȣ : seq';
COMMENT ON COLUMN reservation.genid IS '���̵� : ������ȣ �Ǵ� �Ϲݻ���ھ��̵�';
COMMENT ON COLUMN reservation.pid IS '���޾��̵�';
COMMENT ON COLUMN reservation.rescontents IS '���೻��';
COMMENT ON COLUMN reservation.resname IS '���������̸�';
COMMENT ON COLUMN reservation.phone IS '�Ϲݿ���ó';
COMMENT ON COLUMN reservation.addr IS '�Ϲ��ּ�';
COMMENT ON COLUMN reservation.resaccept IS '����ó������';
COMMENT ON COLUMN reservation.resdate IS '�����Ͻ�';
COMMENT ON COLUMN reservation.email IS '�Ϲ��̸����ּ�';
COMMENT ON TABLE subject IS '�������';
COMMENT ON COLUMN subject.subjectcode IS '��������ڵ�';
COMMENT ON COLUMN subject.subname IS '��������̸�';
COMMENT ON TABLE tempdayoff IS '�ӽ�����';
COMMENT ON COLUMN tempdayoff.pid IS '���޾��̵�';
COMMENT ON COLUMN tempdayoff.dayoff IS '�ӽ��޹���';
COMMENT ON COLUMN tempdayoff.lastdate IS '���ϸ������� : �������� ���� �ڵ����� �����ϱ� ����';



