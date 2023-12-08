# Dockerfile

FROM jupyter/base-notebook

# Install any additional dependencies you need
# For example, if you use Python notebooks, you might want to install additional packages:
# RUN pip install -r requirements.txt

RUN pip install pip-install-test
RUN chmod -R 777 ./
# Set the working directory
WORKDIR /workspace

# Copy the Jupyter notebooks into the container
COPY . .

# Expose the Jupyter notebook port
EXPOSE 8888

# Command to run Jupyter notebook on container startup
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
