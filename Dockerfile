FROM odoo:16

# Cài đặt các dependencies cần thiết
USER root
RUN pip3 install --no-cache-dir -r /requirements.txt

# Copy mã nguồn Odoo vào container
COPY . /mnt/extra-addons

# Khởi động Odoo
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
