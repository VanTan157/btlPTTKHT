public class ThanhVien {
    private int id;
    private HoTen ten;
    private String tendangnhap;
    private String matkhau;
    private Date ngaysinh;
    private String diachi;
    private String email;
    private String sdt;

    public ThanhVien(HoTen ten, String tendangnhap, String matkhau, Date ngaysinh, String diachi, String email, String sdt) {
        this.ten = ten;
        this.matkhau = matkhau;
        this.ngaysinh = ngaysinh;
        this.diachi = diachi;
        this.email = email;
        this.sdt = sdt;
        this.tendangnhap = tendangnhap;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getTendangnhap() {
        return tendangnhap;
    }

    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public HoTen getTen() {
        return ten;
    }

    public void setTen(HoTen ten) {
        this.ten = ten;
    }

    public String toString() {
        return "ThanhVien{" +
                "id=" + id +
                ", ten=" + ten +
                ", tenDangNhap='" + tenDangNhap + '\'' +
                ", matKhau='" + matKhau + '\'' +
                ", ngaySinh=" + ngaySinh +
                ", diaChi=" + diaChi +
                ", email='" + email + '\'' +
                ", soDienThoai='" + soDienThoai + '\'' +
                '}';
    }

    public static void main(String[] args) {
        // Tạo thông tin họ tên
        HoTen tenThanhVien = new HoTen("Nguyen", "Van", "A");

        // Tạo thông tin địa chỉ

        // Tạo một đối tượng ThanhVien
        ThanhVien thanhVien = new ThanhVien(
                tenThanhVien,
                "nguyenvana",
                "matkhau123",
                new Date(), // Ngày sinh hiện tại
                diaChiThanhVien,
                "nguyenvana@gmail.com",
                "0123456789"
        );

        // In ra thông tin của thành viên
        System.out.println(thanhVien);
    }
}