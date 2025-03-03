FROM odoo:16

# Cài đặt các dependencies cần thiết
USER root

# Sao chép file requirements.txt vào container
COPY requirements.txt /requirements.txt



# Sao chép toàn bộ mã nguồn vào thư mục addons của Odoo
COPY . /mnt/extra-addons

# Khởi động Odoo
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
