create table tbl_author
(
    id         bigint generated by default as identity,
    firstname varchar(255) not null,
    lastname  varchar(255) not null,
    login      varchar(255) not null unique,
    password   varchar(255) not null,
    primary key (id)
);

create table tbl_label
(
    id   bigint generated by default as identity,
    name varchar(255) not null unique,
    primary key (id)
);

create table tbl_news
(
    author_id         bigint,
    created_date_time timestamp(6),
    id                bigint generated by default as identity,
    updated_date_time timestamp(6),
    content           varchar(255),
    title             varchar(255) not null unique,
    primary key (id)
);

create table tbl_notice
(
    id      bigint generated by default as identity,
    news_id bigint,
    content varchar(255),
    primary key (id)
);

alter table if exists tbl_news add constraint FKfr9lepy44sqk5rm6221ngxxoc foreign key (author_id) references tbl_author;
alter table if exists tbl_notice add constraint FKeuxpv9hioja7oivkewryrhvhs foreign key (news_id) references tbl_news;