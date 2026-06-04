# Steps to create env using `uv`

1. Run `make install`
2. Optionally, run `make dev`
4. To activate the env, use `source .venv/bin/activate`
5. To use the env inside Jupyterlab, run `make kernel`. This registers the env inside Jupyter.
6. Note that the actual command registers the kernel name as 'nlp-course-materials'. You may change it as per your requirements.
7. Once steps 5 and 6 are complete, you should be able to see your kernel in JupyterLab.
8. To update dependencies, run `make lock` followed by `make sync`.
9. Finally, to remove caches, build artifacts, and the virtual environment, run `make clean`.
10. Inspect `.toml` file for all the packages available in teh environment.
11. To add new packages besides the ones installed, run `uv add <package-name>`.
