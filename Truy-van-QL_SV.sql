/*a. Thống kê số lượng sinh viên của từng ngành. Thông tin hiển thị gồm: Mã ngành,
tên ngành, số lượng sinh viên*/
select sv.MaNganh as 'Mã ngành', TenNganh as 'Tên ngành', count(MaSV) as 'Số lượng sinh viên'
from SinhVien sv join NganhHoc nh on sv.MaNganh = nh.MaNganh
group by sv.MaNganh, TenNganh
/*b. Lấy số lượng của sinh viên theo từng lớp sinh hoạt. Thông tin hiển thị gồm: Mã
lớp, số lượng sinh viên*/
select MaLop as 'Mã lớp', SoLuong as 'Số Lượng'
from LopSinhHoat
/*c. Lấy danh sách sinh viên không đăng ký môn học trong Học kỳ 2/2023-2024.
Thông tin hiển thị gồm: Mã sinh viên, tên sinh viên*/
select sv.MaSV as 'Mã sinh viên', Ho as 'Họ', Ten as 'Tên'
from SinhVien sv
where not exists ( select sv.*
		           from DangKy dk
		           where sv.MaSV = dk.MaSV and TenHocKy = 2 and NamHoc = '2023-2024')

/*d. Thống kê số lượng môn học giảng dạy của các giảng viên. Thông tin hiển thị
gồm: Mã giảng viên, tên giảng viên, số lượng môn học giảng dạy.*/
select gv.MaGV as 'Mã giảng viên', Ho as 'Họ', Ten as 'Tên', count(distinct MaMH) as 'Số lượng môn học giảng dạy'
from GiangVien gv join PhuTrach pt on gv.MaGV = pt.MaGV join LopHocPhan lhp on lhp.MaLHP = pt.MaLHP
group by gv.MaGV, Ho, Ten

/*Câu e: Lấy thông tin số lượng môn học đã đăng ký của mỗi sinh viên trong Học kỳ
2/2023-2024. Thông tin gồm: Mã SV, Họ, Tên, Mã lớp, Tên học kỳ, năm học, số
lượng môn học.*/
SELECT SV.MaSV, SV.Ho, SV.Ten, SV.MaLop, DK.TenHocKy, DK.NamHoc, COUNT(DK.MaLHP) AS SoLuongMonHoc
FROM SinhVien SV, DangKy DK
WHERE SV.MaSV = DK.MaSV AND DK.TenHocKy = '2' AND DK.NamHoc = '2023-2024'
GROUP BY SV.MaSV, SV.Ho, SV.Ten, SV.MaLop, DK.TenHocKy, DK.NamHoc

/*Câu f: Thống kê số lớp giảng dạy của mỗi giảng viên trong từng học kỳ. Thông tin hiển 
thị gồm: Tên học kỳ, năm học, mã giảng viên, tên giảng viên, số lớp giảng dạy.*/
select gv.MaGV, gv.Ho, gv.Ten, lh.TenHocKy, lh.NamHoc, count(lh.MaLHP) as SoLopGiangDay
from GiangVien gv, PhuTrach pt, LopHocPhan lh
where gv.MaGV=pt.MaGV and pt.MaLHP=lh.MaLHP
group by gv.MaGV, gv.Ho, gv.Ten, lh.TenHocKy, lh.NamHoc

/*Câu g:Lấy thông tin những sinh viên đăng ký một môn học từ hai lần trở lên (đăng ký 
trong hai học kỳ khác nhau). Thông tin gồm: Mã SV, Họ, Tên, Mã Lớp, Mã MH, 
tên MH.*/
select sv.MaSV, sv.Ho, sv.Ten, lh1.MaLHP, mh.MaMH, mh.TenTV
from SinhVien sv
join DangKy dk1 on sv.MaSV = dk1.MaSV
join LopHocPhan lh1 on dk1.MaLHP = lh1.MaLHP
join MonHoc mh on lh1.MaMH = mh.MaMH
join DangKy dk2 on sv.MaSV = dk2.MaSV
join LopHocPhan lh2 on dk2.MaLHP = lh2.MaLHP
join MonHoc mh2 on lh2.MaMH = mh2.MaMH
where mh2.MaMH=mh.MaMH
group by sv.MaSV, sv.Ho, sv.Ten, lh1.MaLHP, mh.MaMH, mh.TenTV
having count(*) >= 2;

/*Câu h: Lấy thông tin số tín chỉ tích lũy, điểm trung bình tích lũy của mỗi sinh viên. 
Thông tin gồm: Mã SV, Họ, Tên, Mã Lớp, Tổng tín chỉ tích lũy, điểm trung bình 
tích lũy*/
select iu.MaSV, sv.Ho, sv.Ten,sv.MaLop ,sum(mh.SoTC) as TongTinChiTichLuy, round(SUM((mh.SoTC * iu.DTB)) / SUM(mh.SoTC),2) as DiemTrungBinhTichLuy
from
(select sv1.MaSV,sv1.Ho, sv1.Ten, mh1.TenTV, max(kq1.DTB) as DTB
from SinhVien sv1, KetQua kq1, LopHocPhan lhp1, MonHoc mh1
where sv1.MaSV=kq1.MaSV and kq1.MaLHP=lhp1.MaLHP and lhp1.MaMH=mh1.MaMH
group by sv1.MaSV, sv1.Ten, sv1. Ho, mh1.TenTV) iu, SinhVien sv, MonHoc mh
where iu.MaSV=sv.MaSV and mh.TenTV=iu.TenTV
group by iu.MaSV, sv.Ho, sv.Ten, sv.MaLop

/*i. Lấy thông tin những môn học trong học kỳ 1/2023-2024 chưa có điểm. Thông tin
gồm: Mã MH, Tên MH.*/
SELECT a.MaMH,a.TenTV,a.TenTA
FROM 
(SELECT m.MaMH,w.TenTV,w.TenTA, count(*) as SoLuong
FROM (KetQua e join LopHocPhan m ON e.MaLHP=m.MaLHP) join MonHoc w ON m.MaMH=w.MaMH
WHERE e.DTB is null
and m.TenHocKy='1' and m.NamHoc='2023-2024'
GROUP BY m.MaMH,w.TenTV,w.TenTA)a
where a.SoLuong>=1
GROUP BY a.MaMH,a.TenTV,a.TenTA

/*j. Thống kê điểm trung bình của từng môn học theo học kỳ. Thông tin hiển thị gồm:
Tên học kỳ, năm học, tên môn học, điểm trung bình.*/
SELECT m.NamHoc, m.TenHocKy, w.TenTV, AVG(e.DTB) AS DTB
FROM ((KetQua e join LopHocPhan m ON e.MaLHP=m.MaLHP) join MonHoc w ON m.MaMH=w.MaMH) 
WHERE e.DTB>=0 and e.DTB<=10 
GROUP BY m.NamHoc, m.TenHocKy, w.TenTV

/*k. Thống kê sinh viên có điểm trung bình tích lũy cao nhất trong từng lớp sinh hoạt.
Thông tin hiển thị gồm: Mã lớp sinh hoạt, họ tên sinh viên, điểm trung bình tích
lũy.*/
Select z.MaLop,z.Ho, z.Ten, z.Diem_tb_tich_luy as N'Điểm Trung bình tích lũy'
from
(Select y.MaLop, Max(diem_tb_tich_luy) AS 'Điểm TB cao nhất của lớp'
from
(select c.MaLop,c.MaSV,c.Ho, c.Ten, round(sum(a.DTB_Max*b.SoTC)/sum(b.SoTC),2) diem_tb_tich_luy
From
(select e.MaSV, m.MaMH, MAX(e.DTB) DTB_Max
from KetQua e join LopHocPhan m on e.MaLHP=m.MaLHP	
where e.DTB <=10 and e.DTB>=4
Group by e.MaSV,m.MaMH)a, MonHoc b,SinhVien c
Where  a.MaMH=b.MaMH
   and a.MaSV=c.MaSV
group by c.MaLop,c.MaSV,c.Ho, c.Ten) y
group by y.MaLop) x,
(select c.MaLop,c.MaSV,c.Ho, c.Ten, round(sum(a.DTB_Max*b.SoTC)/sum(b.SoTC),2) diem_tb_tich_luy
From
(select e.MaSV, m.MaMH, MAX(e.DTB) DTB_Max
from KetQua e join LopHocPhan m on e.MaLHP=m.MaLHP	
where e.DTB <=10 and e.DTB>=4
Group by e.MaSV,m.MaMH)a, MonHoc b,SinhVien c
Where  a.MaMH=b.MaMH
   and a.MaSV=c.MaSV
group by c.MaLop,c.MaSV,c.Ho, c.Ten) z
Where x.[Điểm TB cao nhất của lớp]=z.diem_tb_tich_luy
and x.MaLop=z.MaLop
