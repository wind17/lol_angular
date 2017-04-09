SET NAMES 'utf8';
DROP DATABASE IF EXISTS lol;
CREATE DATABASE lol CHARSET=UTF8;
USE lol;

CREATE TABLE lol_dish(
    did INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64),
    price FLOAT(6,2),
    img_sm VARCHAR(64),
    img_lg VARCHAR(64),
    detail VARCHAR(2048),
    material VARCHAR(2048)
);
INSERT INTO lol_dish(did,img_sm,img_lg,name,price,material,detail) VALUES
(   null,
    'alan.jpg',
    'alan-l.jpg',
    '【奥利安娜】',
    36,
    '发条魔灵',
    '法师,qwer...... '
),
(   null,
    'jks.jpg',
    'jks-l.jpg',
    '【暴走萝莉】',
    16.5,
    '金克斯',
    '射手,能够用q技能切换形态不断输出'
),
(   null,
    'mf.jpg',
    'mf-l.jpg',
    '【赏金猎人】',
    32,
    '厄运小姐',
    '射手,能用e不断消耗,用大招哈哈哈...'
),
(   null,
    'sona.jpg',
    'sona-l.jpg',
    '【琴瑟仙女】',
    6.5,
    '娑娜',
    '辅助,q消耗 w加血 e加速/减速 大招控制'
),
(   null,
    'vn.jpg',
    'vn-l.jpg',
    '【暗夜猎手】',
    32,
    '薇恩',
    '射手,坦克杀手,w第三下触发真实伤害'
),
(   null,
    'xdl.jpg',
    'xdl-l.jpg',
    '【暗黑元首】',
    25,
    '辛德拉',
    '法师,w能够抓取非友方生物.'
);

##SELECT * FROM lol_dish;

CREATE TABLE lol_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    user_name VARCHAR(16),
    sex INT,    /*1:男  2:女*/
    order_time datetime NOT NULL DEFAULT 0,
    addr VARCHAR(256),
    did INT
);
INSERT INTO lol_order(oid, phone,user_name,sex,order_time,addr,did) VALUES
(NULL,'13501234567','婷婷',2,1445154859209,'大钟寺中鼎B座',3),
(NULL,'13501234567','婷婷',2,1445254959209,'大钟寺中鼎B座',2),
(NULL,'13501234567','婷婷',2,1445354959209,'大钟寺中鼎B座',5);

##SELECT * FROM lol_order;