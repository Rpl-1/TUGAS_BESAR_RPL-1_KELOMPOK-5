CREATE DATABASE brotoresto;

USE brotoresto;

CREATE TABLE bahan (
   id_bahan varchar(10) NOT NULL
   nama_bahan varchar(30) NOT NULL,
   stock smallint(5) NOT NULL,
   id_pegawai varchar(10) NOT NULL,
   PRIMARY KEY (id_bahan),
   KEY id_pegawai (id_pegawai))
   ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE detail_menu (
   id_detailmenu varchar(10) NOT NULL,
   qty_bahan varchar(3) NOT NULL,
   id_menu varchar(10) NOT NULL,
   id_bahan varchar(10) NOT NULL,
   PRIMARY KEY (id_detailmenu),
   KEY id_menu (id_menu),
   KEY id_bahan (id_bahan)) 
   ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE detail_pesanan (
   id_detailpesanan int(10) NOT NULL AUTO_INCREMENT,
   kuantitas smallint(3) NOT NULL,
   sub_total_harga int(10) NOT NULL,
   id_menu varchar(10) NOT NULL,
   id_pesanan int(10) NOT NULL,
   PRIMARY KEY (id_detailpesanan),
   KEY id_menu (id_menu),
   KEY id_pesanan (id_pesanan))
   ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

CREATE TABLE kategori (
   id_kategori varchar(10) NOT NULL,
   nama_kategori varchar(30) NOT NULL,
   PRIMARY KEY (id_kategori)) 
   ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE kuisioner (
   id_kuisioner varchar(10) NOT NULL,
   tanggal datetime NOT NULL,
   keterangan text NOT NULL,
   id_pegawai varchar(10) NOT NULL,
   PRIMARY KEY (id_kuisioner),
   KEY id_pegawai (id_pegawai)) 
   ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE meja (
   id_meja smallint(3) NOT NULL,
   kapasitas char(3) NOT NULL,
   available enum('Y','N') DEFAULT 'Y',
   PRIMARY KEY (id_meja)) 
   ENGINE=InnoDB DEFAULT CHARSET=latin1;
   
CREATE TABLE menu (
   id_menu varchar(10) NOT NULL,
   nama_menu varchar(30) NOT NULL,
   harga int(10) NOT NULL,
   status enum('ada','kosong') NOT NULL DEFAULT 'ada',
   keterangan text,
   gambar text,
   id_kategori varchar(10) NOT NULL,
   id_pegawai varchar(10) DEFAULT NULL,
   PRIMARY KEY (id_menu),
   KEY id_pegawai (id_pegawai),
   KEY id_kategori (id_kategori)) 
   ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE pegawai (
   id_pegawai varchar(10) NOT NULL,
   nama_pegawai varchar(35) NOT NULL,
   alamat varchar(35) NOT NULL,
   no_hp varchar(12) NOT NULL,
   password varchar(50) NOT NULL,
   foto text,
   jabatan enum('Koki','Kasir','Pantry','Pelayan','CS') NOT NULL,
   PRIMARY KEY (id_pegawai)) 
   ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE pembayaran (
   id_pembayaran int(10) NOT NULL AUTO_INCREMENT,
   total_bayar int(10) NOT NULL,
   kembalian int(10) NOT NULL,
   id_pesanan int(10) NOT NULL,
   id_pegawai varchar(10) NOT NULL,
   PRIMARY KEY (id_pembayaran),
   KEY id_pegawai (id_pegawai),
   KEY pembayaran_ibfk_1 (id_pesanan)) 
   ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

CREATE TABLE pesanan (
   id_pesanan int(10) NOT NULL AUTO_INCREMENT,
   tgl_pesanan datetime NOT NULL,
   total_item smallint(3) DEFAULT NULL,
   total_harga int(10) DEFAULT NULL,
   status enum('lunas','belum') DEFAULT 'belum',
   id_pegawai varchar(10) NOT NULL,
   id_meja smallint(3) NOT NULL,
   PRIMARY KEY (id_pesanan),
   KEY id_meja (id_meja),
   KEY id_pegawai (id_pegawai))
   ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;
