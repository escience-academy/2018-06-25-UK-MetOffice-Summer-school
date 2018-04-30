FROM continuumio/miniconda3

RUN cd /root && git clone https://github.com/escience-academy/2018-06-25-UK-MetOffice-Summer-school.git && mv 2018-06-25-UK-MetOffice-Summer-school ukms-nb

RUN conda update -y -n base conda
RUN conda create -y -n ukms && bash -c 'source activate ukms'
RUN conda install -y numpy scipy matplotlib jupyter jupyterlab netCDF4
RUN conda install -y -c conda-forge cartopy

COPY start.sh /root
RUN chmod +x /root/start.sh

EXPOSE 8888
CMD ["/root/start.sh"]
