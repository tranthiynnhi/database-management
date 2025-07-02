# Đồ án nhóm môn Quản trị cơ sở dữ liệu 
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

**Yêu cầu:** 
- Dựa vào các mô tả về yêu cầu lưu trữ của hệ thống quản lý sinh viên, tiến hành phân 
tích, thiết kế cơ sở dữ liệu hỗ trợ việc lưu trữ, xử lý dữ liệu. Thực hiện đầy đủ các 
bước thiết kế: Thiết kế cơ sở dữ liệu ý niệm, Thiết kế cơ sở dữ liệu luận lý, Thiết kế 
cơ sở dữ liệu vật lý.
- Lưu ý: Bản thiết kế phải đáp ứng đầy đủ theo 4 yêu cầu lưu trữ thông tin. Các yêu 
cầu về lưu trữ có sự liên quan với nhau, do vậy trong quá trình thiết kế nên đọc và 
phân tích lần lượt các yêu cầu. 
- Tiến hành nhập dữ liệu vào các bảng và thực hiện các câu truy vấn sau: 

a. Thống kê số lượng sinh viên của từng ngành. Thông tin hiển thị gồm: Mã ngành, 
tên ngành, số lượng sinh viên 

b. Lấy số lượng của sinh viên theo từng lớp sinh hoạt. Thông tin hiển thị gồm: Mã 
lớp, số lượng sinh viên 

c. Lấy danh sách sinh viên không đăng ký môn học trong Học kỳ 2/2023-2024. 
Thông tin hiển thị gồm: Mã sinh viên, tên sinh viên 

d. Thống kê số lượng môn học giảng dạy của các giảng viên. Thông tin hiển thị 
gồm: Mã giảng viên, tên giảng viên, số lượng môn học giảng dạy. 

e. Lấy thông tin số lượng môn học đã đăng ký của mỗi sinh viên trong Học kỳ 
2/2023-2024. Thông tin gồm: Mã SV, Họ, Tên, Mã lớp, Tên học kỳ, năm học, số 
lượng môn học. 

f. Thống kê số lớp giảng dạy của mỗi giảng viên trong từng học kỳ. Thông tin hiển 
thị gồm: Tên học kỳ, năm học, mã giảng viên, tên giảng viên, số lớp giảng dạy. 

g. Lấy thông tin những sinh viên đăng ký một môn học từ hai lần trở lên (đăng ký 
trong hai học kỳ khác nhau). Thông tin gồm: Mã SV, Họ, Tên, Mã Lớp, Mã MH, 
tên MH. 

h. Lấy thông tin số tín chỉ tích lũy, điểm trung bình tích lũy của mỗi sinh viên. 
Thông tin gồm: Mã SV, Họ, Tên, Mã Lớp, Tổng tín chỉ tích lũy, điểm trung bình 
tích lũy 

i. Lấy thông tin những môn học trong học kỳ 1/2023-2024 chưa có điểm. Thông tin 
gồm: Mã MH, Tên MH.

j. Thống kê điểm trung bình của từng môn học theo học kỳ. Thông tin hiển thị gồm: 
Tên học kỳ, năm học, tên môn học, điểm trung bình. 

k. Thống kê sinh viên có điểm trung bình tích lũy cao nhất trong từng lớp sinh hoạt. 
Thông tin hiển thị gồm: Mã lớp sinh hoạt, họ tên sinh viên, điểm trung bình tích 
lũy. 

**Lưu ý:** Dữ liệu nhập vào các bảng phải đảm bảo đầy đủ để thực hiện được các yêu 
cầu truy vấn.
