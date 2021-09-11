FROM python:3.9.7

COPY requirements /opt/

# If you need a pip config
# COPY pip.conf /opt/
# ENV PIP_CONFIG_FILE=/opt/pip.conf

RUN pip install -r /opt/requirements --disable-pip-version-check --no-cache-dir
RUN jupyter contrib nbextension install --user && \
    jupyter nbextension enable autosavetime/main && \
    jupyter nbextension enable collapsible_headings/main && \
    jupyter nbextension enable highlight_selected_word/main && \
    jupyter nbextension enable snippets_menu/main && \
    jupyter nbextension enable table_beautifier/main && \
    jupyter nbextension enable codefolding/main && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension enable hinterland/hinterland && \
    jupyter nbextension enable move_selected_cells/main && \
    jupyter nbextension enable scratchpad/main && \
    jupyter nbextension enable tree-filter/index && \
    jupyter nbextension enable code_font_size/code_font_size && \
    jupyter nbextension enable toc2/main && \
    jupyter nbextension enable varInspector/main

WORKDIR /home/mchesnokov/

EXPOSE 8888
CMD jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password=''
