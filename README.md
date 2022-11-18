# STAR Vegetation Health products
Repository for wotking with NOAA STAR data

**[NOAA User Guide](https://www.star.nesdis.noaa.gov/smcd/emb/vci/VH_doc/VHP_uguide_v2.0_2018_0727.pdf)**

**[4km resolution (Since 1981) file download page](https://www.star.nesdis.noaa.gov/pub/corp/scsb/wguo/data/Blended_VH_4km/VH/)**

**[Python module for working with netCDF (.VH.nc) files ](https://www.star.nesdis.noaa.gov/smcd/emb/vci/VH_doc/VHP_uguide_v2.0_2018_0727.pdf)**

**[Latvian Registered crop areas WFS](https://www.lad.gov.lv/lv/atbalsta-veidi/platibu-maksajumi/lauku-registrs-un-karte/lauku-registra-dati/)**

**[dbt core docker image location](https://github.com/dbt-labs/dbt-core/pkgs/container/dbt-postgres)**


## System design

1) ./Database = dockerized postgresql and raw data schemas

2) ./Data_Loader = Python scripts to pull the data from relevant sources

3) ./dbt = transform SQL scripts managed with dockerized dbt

4) ./Analytics = exploratory analysis scripts

## Setup

# prepare virtual environment

$ sudo apt-get install python3-venv 
$ python3 -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt

# prepare .env file
create .env file with variable=value entries as described in [.env_description](.env_description) file

# run docker-compose

$ docker-compose up --build -d

## TO-DO                                                                                                                                                                                                                                             - [x] Briefly describe system design
- [x] Create postgresql docker script
- [x] Make postgresql schema file for WFS data
- [ ] Create script for pulling WFS data into postgres
- [ ] Make postgresql schema file for VH data
- [ ] Create script for pulling .VH.nc files into postgres
- [ ] Create dbt docker script
- [ ] Create transform for dbt to match each field with it's VH estimate
- [ ] Create docker-compose file for running the stack
- [ ] Write query for "local crop condition estimates" E.G., "What is the condition of oat crop near Rezekne?"
