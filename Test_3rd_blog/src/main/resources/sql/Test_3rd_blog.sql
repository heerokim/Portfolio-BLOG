個人ブログサービス

--個人情報 テーブル
create table blog_member (
	id			varchar2(20) 	primary key,		--会員 ID
	password	varchar2(20) 	not null,			--パスワード
	name		varchar2(20) 	not null,			--会員 名前
	photo		number(1) 		default 1			--プロフィール写真 (1~4中から選択)
);

--ブログの書き込み テーブル
create table blog_board (
	boardnum	number			primary key,		--書き込み 番号
	id			varchar2(20)	not null,			--作成者 ID
	title		varchar2(200) 	not null,			--書き込み タイトル
	content		varchar2(2000) 	not null,			--書き込み 内容
	inputdate	date			default sysdate,	--作成日
	likecnt		number			default 0,			--いいね数
	constraint blog_board_fk foreign key(id) 
		references blog_member (id) on delete cascade
);

--書き込み 番号 シーケンス
create sequence blog_board_seq;
