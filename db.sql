CREATE TABLE articles (
    article_id int(11) not null PRIMARY KEY AUTO_INCREMENT,
    article_title varchar(256) not null,
    article_text text not null,
    article_author varchar(256) not null,
    article_date datetime not null
);