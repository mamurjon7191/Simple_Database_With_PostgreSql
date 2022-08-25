create table tuman(
  id bigserial not null primary key,
  name varchar(60) not null,
);
create table maktab(
  id bigserial not null primary key,
  name varchar(60) not null,
  tuman_id bigint references tuman(id) not null,
);
create table sinf(
  id bigserial not null primary key,
  name varchar(60) not null,
  maktab_id bigint references maktab(id) not null,
);
create table oquvchilar(
  id bigserial not null primary key,
  name varchar(60) not null,
  tugilgan_kun DATE,
  tel VARCHAR(30) ,
  gender VARCHAR(30) CHECK(gender='Male' OR gender='Female'),
  sinf_id bigint references sinf(id) not null,
);
