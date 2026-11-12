# Tiếng Anh Tiểu Học – Ôn Thi Học Kỳ · Landing page

Trang giới thiệu (landing page) tĩnh cho ứng dụng **Tiếng Anh Tiểu Học – Ôn Thi Học Kỳ** (lớp 1–5, HK1 & HK2).
HTML + CSS + một file JS nhỏ, **không cần build**.

- App Store: https://apps.apple.com/vn/app/ti%E1%BA%BFng-anh-l%E1%BB%9Bp-3-h%E1%BB%8Dc-k%E1%BB%B3-2/id6762140263
- Google Play: https://play.google.com/store/apps/details?id=com.tien.hocky2lop3

## Cấu trúc

```
index.html              trang chính (SEO, Open Graph, JSON-LD)
assets/css/style.css    giao diện
assets/js/main.js       tab dạng bài, làm nổi nút store theo thiết bị
assets/img/             ảnh màn hình (webp), icon app, og-image.jpg
netlify.toml            cấu hình Netlify (publish thư mục gốc, cache, header bảo mật)
set-site-url.sh         điền địa chỉ web thật vào og:image
robots.txt, .nojekyll
```

## Chạy thử trên máy

```bash
python3 -m http.server 8000   # rồi mở http://localhost:8000
```

## Đăng lên GitHub

```bash
git init && git add . && git commit -m "Landing page"
git branch -M main
git remote add origin https://github.com/<user>/<repo>.git
git push -u origin main
```

(Tuỳ chọn) GitHub Pages: Settings → Pages → Deploy from branch → `main` / root.

## Đăng lên Netlify

Cách 1 – kéo thả: vào https://app.netlify.com/drop rồi thả cả thư mục (hoặc file zip đã giải nén).

Cách 2 – từ GitHub: *Add new site → Import an existing project* → chọn repo.
Build command: để trống · Publish directory: `.` (đã có trong `netlify.toml`).

## Sau khi có địa chỉ web

Chạy một lần để ảnh chia sẻ (Facebook/Zalo/iMessage) hiện đúng:

```bash
./set-site-url.sh https://ten-cua-ban.netlify.app
```

rồi commit & push lại.

## Lưu ý

- Hai nút tải là nút tự thiết kế. Nếu muốn dùng badge chính thức, tải bộ badge từ Apple Marketing Tools và Google Play badges rồi thay vào hai thẻ `.store` trong `index.html`.
- Nếu sau này thêm/đổi học kỳ, sửa mục `#hoc-ky` trong `index.html`.
- Link Chính sách quyền riêng tư đặt ở chân trang; cập nhật nếu trang chính sách đổi địa chỉ.
