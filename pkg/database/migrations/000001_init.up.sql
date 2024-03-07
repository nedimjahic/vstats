create table  team (
    id bigint not null,
    name varchar,
    address varchar,
    location varchar,
    created_at timestamp,
    created_by varchar,
    modified_at timestamp,
    modified_by timestamp,
    primary key (id)
);

create table player (
    id bigint not null,
    team_id bigint,
    first_name varchar,
    middle_name varchar,
    last_name varchar,
    primary_position varchar,
    created_at timestamp,
    created_by varchar,
    modified_at timestamp,
    modified_by timestamp,
    primary key (id),
    constraint fk_team foreign key (team_id) references team(id)
);

create table game (
    id bigint not null,
    home_team_id bigint not null,
    visiting_team_id bigint not null,
    date timestamp,
    location varchar,
    created_at timestamp,
    created_by varchar,
    modified_at timestamp,
    modified_by timestamp,
    primary key (id),
    constraint fk_home_team foreign key (home_team_id) references team(id),
    constraint fk_visiting_team foreign key (visiting_team_id) references team(id)
);