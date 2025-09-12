#安装编译环境
sudo yum update -y
sudo yum install -y python3-devel gmp-devel mpfr-devel gsl-devel gcc openmpi-devel

##官方推荐的安装方式
pip install git+https://github.com/popgenmethods/smcpp
#对于国内机器，连接GitHub不稳定，可以先clone下载至本地，再安装
cd /home
git clone https://github.com/popgenmethods/smcpp.git

##安装程序会自动尝试从pip里下载所需科学计算库
##如遇报错，可能是兼容性问题，可手动安装下面的库组合解决
pip install numpy==1.19.5
pip install pandas==1.4.3
pip install scipy==1.8.1
pip install matplotlib==3.5.3
pip install scikit-learn==1.6.1
pip install pysam==0.23.3

#进入目录，安装
cd smcpp
python setup.py install
#安装完成，删除多余文件(可选)
cd ..
rm -rf smcpp

