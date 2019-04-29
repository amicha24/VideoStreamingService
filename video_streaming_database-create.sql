/* 
  NAME: ALSENY SYLLA
*/

CREATE SCHEMA PRODUCTION;
go

CREATE SCHEMA SALES;
go


CREATE TABLE SALES.PLANS (
  plan_id INT IDENTITY(1, 1)PRIMARY KEY,
  plan_name VARCHAR(255) NOT NULL UNIQUE,
  cycle_price_in_cent INT NOT NULL,
  amount_streaming_per_cycle_in_sec INT NOT NULL,
  cycle_length_in_sec INT,
  is_monthly BIT DEFAULT 0,
  hd_available BIT NOT NULL DEFAULT 1,
  ultra_hd_available BIT NOT NULL DEFAULT 0,
  max_screen INT NOT NULL DEFAULT 1
);

CREATE TABLE SALES.SUBSCRIPTIONS (
  subscription_id INT IDENTITY(1, 1) PRIMARY KEY,
  plan_id INT NOT NULL,
  start_date DATETIME,
  last_payment_date DATETIME,
  joining_date DATETIME,
  FOREIGN KEY (plan_id) REFERENCES SALES.PLANS (plan_id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE SALES.CREDIT_CARDS (
  credit_card_id INT IDENTITY(1, 1) PRIMARY KEY,
  credit_card_type VARCHAR(100),
  credit_card_number VARCHAR(25) NOT NULL,
  exp_month TINYINT NOT NULL,
  exp_year SMALLINT NOT NULL,
  cvv SMALLINT NOT NULL,
  owner_first_name VARCHAR(100) NOT NULL,
  owner_last_name VARCHAR(100) NOT NULL,
  zip_code VARCHAR(10) NOT NULL,
  modified_date DATETIME,
   
);

CREATE TABLE SALES.SUBSCRIBERS (
  subscriber_id INT IDENTITY(1, 1) PRIMARY KEY,
  subscription_id INT,
  credit_card_id INT,
  pay_by_check BIT DEFAULT 0,
  email VARCHAR(255) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  middle_name VARCHAR(255),
  last_name VARCHAR(255) NOT NULL,
  suffix VARCHAR(10),
  street VARCHAR(255),
  city VARCHAR(100),
  state VARCHAR(25),
  zip_code VARCHAR(5),
  phone VARCHAR(25),
  left_to_stream_in_sec INT DEFAULT 7200,
  total_stream_in_sec INT NOT NULL,
  FOREIGN KEY (subscription_id) REFERENCES SALES.SUBSCRIPTIONS (subscription_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (credit_card_id) REFERENCES SALES.CREDIT_CARDS (credit_card_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SALES.INVOICES (
  invoice_id INT IDENTITY(1,1) PRIMARY KEY,
  subscriber_id INT,
  invoice_date DATETIME,
  due_date DATETIME,
  total INT,
  tax_rate INT,
  discount INT,
  paid BIT DEFAULT 0,
  pay_by_card BIT DEFAULT 0,
  pay_by_check BIT DEFAULT 0,
  FOREIGN KEY (subscriber_id) REFERENCES SALES.SUBSCRIBERS (subscriber_id) ON DELETE CASCADE ON UPDATE CASCADE

);
/*-----------------------------------------------------*/


CREATE TABLE PRODUCTION.LICENSES (
  license_id INT IDENTITY(1,1) PRIMARY KEY,
  max_concurent_permitted_viewers INT NOT NULL,
  file_created_date DATETIME,
  license_uri VARCHAR(MAX)
);


CREATE TABLE PRODUCTION.PROVIDERS (
  provider_id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(25),
  street VARCHAR(255),
  city VARCHAR(50),
  state VARCHAR(25),
  zip_code VARCHAR(5)
);

CREATE TABLE PRODUCTION.VIDEOS (
  video_id INT IDENTITY (1,1) PRIMARY KEY,
  provider_id INT NOT NULL ,
  license_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  length INT,
  date_created DATE NOT NULL,
  video_uri VARCHAR(MAX),
  current_num_viewers INT,
  FOREIGN KEY (provider_id) REFERENCES PRODUCTION.PROVIDERS (provider_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (license_id) REFERENCES PRODUCTION.LICENSES (license_id) ON DELETE CASCADE ON UPDATE CASCADE
);
/*----------------------------------------*/

CREATE TABLE SALES.ACTIVE_VIEWS (
  video_id INT NOT NULL,
  subscriber_id INT NOT NULL
  FOREIGN KEY (video_id) REFERENCES PRODUCTION.VIDEOS (video_id)  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (subscriber_id) REFERENCES SALES.SUBSCRIBERS (subscriber_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SALES.USERS_VIDEOS (
  video_id INT NOT NULL,
  subscriber_id INT NOT NULL
  FOREIGN KEY (video_id) REFERENCES PRODUCTION.VIDEOS (video_id)  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (subscriber_id) REFERENCES SALES.SUBSCRIBERS (subscriber_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE SALES.USER_PLAN_HISTORY (
  subscriber_id INT NOT NULL,
  plan_id INT NOT NULL,
  date_modified DATETIME,
  FOREIGN KEY (subscriber_id) REFERENCES SALES.SUBSCRIBERS (subscriber_id)  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (plan_id) REFERENCES SALES.SUBSCRIBERS (subscriber_id) ON DELETE CASCADE ON UPDATE CASCADE
);







