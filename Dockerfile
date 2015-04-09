FROM ipython/scipystack

# Now install ipymd from source
RUN mkdir -p /usr/src
WORKDIR /usr/src
RUN git clone https://github.com/rossant/ipymd
WORKDIR /usr/src/ipymd
RUN python3 setup.py install

# Set up the PYTHONPATH info
RUN ipython profile create
RUN echo "c.NotebookApp.contents_manager_class = 'ipymd.IPymdContentsManager'" >> /root/.ipython/profile_default/ipython_notebook_config.py
RUN echo "c.IPymdContentsManager.format = 'markdown'" >> /root/.ipython/profile_default/ipython_notebook_config.py

WORKDIR /usr/data
