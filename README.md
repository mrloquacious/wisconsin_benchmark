# Wisconsin Benchmark

<!--
From GitHub "about readmes" article linked in instructions.
https://help.github.com/en/articles/about-readmes
  What the project does
  Why the project is useful
  How users can get started with the project
  Where users can get help with your project
  Who maintains and contributes to the project
-->

## About
For our CS 487 term project, we'll use the Wisconsin Benchmark to compare the performance of two open source Relational Database Management Systems operating in identical environments.

## Systems
We're using two Google Cloud Platform virtual machines running `Ubuntu 20.04` (see full specs below) to compare the performance differences between `MariaDB` and `PostgreSQL`.

On each system, we used the Scaled Wisconsin Benchmark schema and created data sets of 10K and 1K. We then imported the data into two identical 10K tables (well, the table names are different!) and a single 1K table. 
The data creation, VM and database install/config, and data import went fairly smoothly throughout the process with only minor hiccoughs here and there. 

## Specifications
####Virtual Machine Specifications: 
```
OS: Ubuntu 20.04 LTS
Machine type: e2-medium (2 vCPUs, 4 GB memory)
Boot Disk: 10 GB ubuntu-2004-focal-v20210129 Standard persistent disk.
```
## Process

* **Data Generation:** It quickly became clear that writing code to generate the data would be preferable to stumbling around on the internet searching for a site to do the task. The data generation was extremely straightforward except in the case of `stringu1` and `stringu2` which took a little effort to understand and implement. We used the script `gendata.py` in this repo to generate the data. In order to verify the data was as expected (within reason), we summed each column of ints and compared that to the expected total. For the string data, we simply performed a visual scan of certain sections.  

* **RDBMS Comparison:** We chose two popular open source RDBM systems to compare, in part due to our familiarity with the systems. At first glance they're very similar, but how do these two well established open source RDBM systems stack up when we compare performance using a benchmark?

* **Demonstrate Data:** These documents in our repo show samples of the data: [MariaDB Demo](mariadb_data_demo.pdf) and [PostgreSQL Demo](postgresql_data_demo.png)

* **Lessons Learned:** First, the virtual machine setup and configuration was a familiar process and went quite smoothly.
Next, we installed MariaDB with ease, but chose to create a new user so we would not run as root. A cut and paste error (watch out for newlines!) led to the creation of user `admin` with password `password` — not ideal. It was trickier than expected to delete this user (`DROP USER`) due to the need to specify `'admin'@'localhost'` rather than simply `'admin'`, but we'll chalk this all up to user error.  
In the first attempt to import the data into `MariaDB`, only half of the 10K data set made it into the DB. Luckily, after dropping the tables and re-importing, the second attempt was successful. Why the first attempt failed remains a mystery. 
Additionally, we needed to adjust the scripts used to import the data into each system due to slight differences in sytax between `MariaDB` and `PostgreSQL`.  

