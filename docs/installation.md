# SMC++部署指南

# 一、环境准备

更新并安装依赖库

```bash
sudo yum update -y
sudo yum install -y python3-devel gmp-devel mpfr-devel gsl-devel gcc openmpi-devel
```

# 二、编译安装

### 1. 官方推荐的安装方式

```
pip install git+https://github.com/popgenmethods/smcpp
```

### 2. 对于国内机器，连接GitHub不稳定，可以先clone下载至本地目录（以 `/home`为例），再安装

```
cd /home
git clone https://github.com/popgenmethods/smcpp.git
```

进入目录，安装

```
cd smcpp
python setup.py install
```

### 3. 兼容性问题解决

安装程序会自动尝试从pip里下载所需科学计算库，如遇报错，可能是兼容性问题，可手动安装下面的库组合后重新安装

```
pip install numpy==1.19.5
pip install pandas==1.4.3
pip install scipy==1.8.1
pip install matplotlib==3.5.3
pip install scikit-learn==1.6.1
pip install pysam==0.23.3
```

### 4. 安装完成，删除多余文件(可选)

```
cd ..
rm -rf smcpp
```

