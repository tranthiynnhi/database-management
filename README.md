**Đề tài: Thiết kế cơ sở dữ liệu cho hệ thống quản lý sinh viên của trường Đại học Ngân hàng TPHCM.**

Hệ thống quản lý sinh viên của trường Đại học Ngân hàng TPHCM cần hỗ trợ các yêu cầu lưu trữ như sau: 

*1. Lưu trữ thông tin cá nhân sinh viên và các thông tin liên quan khác.*
- Sau khi trúng tuyển, trường Đại học sẽ lưu trữ thông tin cá nhân của sinh viên và 
các thông tin liên quan. Các thông tin cá nhân của sinh viên gồm: Mã sinh viên, họ, 
tên, ngày sinh, giới tính, email, số điện thoại, CCCD, nơi sinh, quê quán, địa chỉ, 
khóa trúng tuyển, ngày nhập học.
- Mỗi sinh viên sẽ được phân vào một lớp sinh hoạt và học một ngành học. Mỗi lớp 
sinh hoạt và mỗi ngành học sẽ có nhiều sinh viên.  
- Sau một thời gian học sinh viên sẽ được phân vào một chuyên ngành tương ứng với 
ngành học lựa chọn. Mỗi ngành học sẽ có nhiều chuyên ngành, mỗi chuyên ngành 
thuộc một ngành học. 
- Để thuận tiện cho việc liên quan trong quá trình học tập, dữ liệu về người thân cũng 
được lưu trữ. Các thông tin về người thân: Họ, tên, mối quan hệ với sinh viên, số 
ĐT, email, địa chỉ thường trú.

*2. Lưu trữ thông tin đăng ký học phần trong từng học kỳ.*
- Sinh viên đăng ký học phần theo từng học kỳ. Mỗi học kỳ sẽ có thời gian bắt đầu 
và thời gian kết thúc tách biệt với các học kỳ khác (thời gian bắt đầu của học kỳ mới 
phải sau thời gian kết thúc của học kỳ trước đó) và các thông tin khác: tên học kỳ, 
năm học. 
- Trong mỗi học kỳ, sinh viên sẽ đăng ký một hoặc nhiều lớp học phần và mỗi lớp 
học phần có thể được nhiều sinh viên lựa chọn để đăng ký. Mỗi lớp học phần sẽ 
gồm các thông tin: tên lớp học phần, số lượng đăng ký và có nhiều lịch học (thứ, 
tiết bắt đầu, tiết kết thúc, tuần bắt đầu, tuần kết thúc). Mỗi lớp học phần sẽ thuộc 
một học kỳ và tương ứng với một môn học. Trong mỗi học kỳ, một môn học có thể 
mở nhiều lớp học phần trong nhiều học kỳ. Với mỗi môn học, sinh viên chỉ được 
đăng ký một lần trong mỗi học kỳ. 
Ví dụ: Trong học kỳ 2/2023 – 2024, môn học Quản trị dữ liệu được mở 2 lớp học 
phần (D01, D05). Sinh viên có thể lựa chọn đăng ký một trong các lớp này. 
- Mỗi môn học sẽ có mã môn học khác nhau để phân biệt và có các thông tin khác: 
tên môn học tiếng Việt, tên môn học tiếng Anh, số tín chỉ.  
- Mỗi môn học sẽ do một bộ môn quản lý, một bộ môn sẽ quản lý nhiều môn học. 
Mỗi bộ môn sẽ thuộc một Khoa quản lý, mỗi Khoa có nhiều bộ môn. 
Ví dụ: Khoa Hệ thống thông tin quản lý có 3 bộ môn: Khoa học máy tính, Hệ thống 
thông tin quản trị, Thương mại điện tử. Mỗi bộ môn sẽ quản lý nhiều môn học.

*3. Lưu trữ thông tin điểm của các lớp học phần.*
- Điểm các lớp học phần của sinh viên sẽ được lưu trữ vào hệ thống sau khi có kết 
quả. Điểm đánh giá gồm các cột điểm: (1) Chuyên cần; (2) Bài kiểm tra giữa kỳ; (3) 
Bài tập nhóm; (4) Thi kết thúc học phần. Điểm tổng kết của lớp học phần được tính 
theo công thức: 0.1 x Chuyên cần + 0.2 x Bài kiểm tra giữa kỳ + 0.2 x Bài tập nhóm + 
0.5 x Thi kết thúc học phần. 
- Mỗi sinh viên sẽ có điểm của nhiều lớp học phần. Mỗi lớp học phần sẽ có điểm của 
nhiều sinh viên.

*4. Lưu trữ thông tin giảng viên phụ trách lớp sinh hoạt và phụ trách các lớp học phần.*
- Mỗi giảng viên gồm các thông tin sau: Mã GV, họ, tên, ngày sinh, giới tính, học 
hàm, học vị. Mỗi giảng viên thuộc một bộ môn, mỗi bộ môn có nhiều giảng viên. 
- Mỗi lớp sinh hoạt do một giảng viên phụ trách. Mỗi giảng viên có thể phụ trách 
nhiều lớp sinh hoạt. 
- Mỗi giảng viên phụ trách giảng dạy nhiều lớp học phần, mỗi lớp học phần có thể 
nhiều giảng viên tham gia giảng dạy. 
