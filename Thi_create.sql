-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:22:34.337




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV int  NOT NULL,
    TenNV varchar(200)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh varchar(10)  NOT NULL,
    Email varchar(50)  NOT NULL,
    Mucluong int  NOT NULL,
    Maphong int  NOT NULL,
    TPhongban_Maphong int  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);



-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong int  NOT NULL,
    Tenphong int  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY (Maphong)
);







-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (TPhongban_Maphong)
    REFERENCES TPhongban (Maphong)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;






-- End of file.

