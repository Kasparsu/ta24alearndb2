create table users
(
    id       bigint unsigned auto_increment
        primary key,
    name     varchar(1024) not null,
    email    varchar(255)  not null,
    password varchar(2048) not null,
    constraint users_pk_2
        unique (email)
);

create index users_email_index
    on users (email);

create table videos
(
    id          bigint unsigned auto_increment
        primary key,
    title       varchar(2048)   not null,
    user_id     bigint unsigned not null,
    description text            null,
    path        varchar(2048)   not null,
    constraint videos_users_id_fk
        foreign key (user_id) references users (id)
            on delete cascade
);


