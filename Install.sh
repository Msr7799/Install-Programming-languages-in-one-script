#!/bin/bash

# تحقق من أن السكريبت يعمل بصلاحيات sudo
if [ "$EUID" -ne 0 ]; then
  echo "يرجى تشغيل السكريبت باستخدام صلاحيات sudo"
  exit 1
fi

# وظيفة لطباعة النصوص
print_big_text() {
  echo ""
  echo "############################################################"
  echo "#        PROGRAMMER WHAT NEED TO START                     #"
  echo "#        DOWNLOAD ALL PROGRAMMING LANGUAGE & TOOLS         #"
  echo "############################################################"
  echo ""
}

print_small_text() {
  echo "MSR77 easy scripts... waiting 15 seconds before installation begins"
}

print_end_message() {
  echo ""
  echo "############################################################"
  echo "#   Cool..!! You are ready to go.                          #"
  echo "#   Programming is life, and life is programming.          #"
  echo "#   PS: MSR Sudo SU.                                       #"
  echo "############################################################"
  echo ""
}

print_big_text
print_small_text

# انتظار 15 ثانية قبل التثبيت
for i in {1..15}; do
  echo -ne "Installation begins in $((16-i)) seconds...\r"
  sleep 1
done

# عرض صورة كلب وفن ASCII مع اسم DoDO بخط متوسط
show_dog() {
  clear
  echo "   __      _"
  echo "o'')}____//"
  echo " \`_/      )"
  echo " (_(_/-(_/ "
  echo ""
  echo " ____  ____   ___   ___  "
  echo "|  _ \\|  _ \\ / _ \\ / _ \\ "
  echo "| | | | | | | | | | | | |"
  echo "| |_| | |_| | |_| | |_| |"
  echo "|____/|____/ \\___/ \\___/ "
  echo "       DoDO"
}

# عرض صورة بطريق وفن ASCII مع اسم Sudo بخط متوسط
show_penguin() {
  co
  cat << "EOF"
   .--.
  |o_o |
  |:_/ |
 //   \\ \\
(|     | )
/'\_   _/`\\
\___)=(___/

  ____  _    _ ____   ___  
 / ___|| |  | |  _ \ / _ \ 
 \___ \| |  | | | | | | | |
  ___) | |__| | |_| | |_| |
 |____/ \____/|____/ \___/ 
        Sudo
EOF
}


# إخفاء الشاشة لمدة معينة
hide_text() {
  clear
}

# عرض "Good Luck" لمدة 5 ثوانٍ
show_good_luck() {
  clear
  echo "Good Luck!!!"
}

# عرض صورة الكلب لمدة 10 ثوانٍ
show_dog
sleep 10
hide_text

# عرض صورة البطريق لمدة 10 ثوانٍ
show_penguin
sleep 10
hide_text

# عرض "Good Luck" لمدة 5 ثوانٍ
show_good_luck
sleep 5
hide_text

# بدء تثبيت Curl و Wget
apt install -y curl wget

# تثبيت Python و Java و Node.js و C/C++
apt install -y python3 python3-pip python2 default-jdk nodejs npm gcc g++ golang ruby-full php perl

# تثبيت pip لـ Python 2
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python2 get-pip.py

# تثبيت virtualenv
pip install virtualenv

# تثبيت Docker
apt install -y docker.io

# تثبيت MySQL
apt install -y mysql-server

# تثبيت PostgreSQL
apt install -y postgresql postgresql-contrib

# تثبيت Redis
apt install -y redis-server

# تثبيت .NET SDK
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt update && apt install -y dotnet-sdk-6.0

# تثبيت Ansible
apt install -y ansible

# تثبيت Terraform
apt install -y terraform

# تثبيت Vagrant
apt install -y vagrant

# تثبيت Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# تثبيت R
apt install -y r-base

# تثبيت Kotlin باستخدام SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install kotlin

# طباعة رسالة النهاية
print_end_message

# ومضة لمدة 10 ثوانٍ عند الانتهاء
for i in {1..10}; do
  echo -ne "Cool..!! You are ready to go in $((11-i)) seconds...\r"
  sleep 1
done
M
echo -e "\nتم تثبيت جميع لغات البرمجة والأدوات المطلوبة!"
