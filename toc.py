import glob
import os
import urllib.parse


def main():
    notebook_folder = "notebook"
    filelist = os.listdir(f"./{notebook_folder}")
    filelist = sorted(filelist)
    for file in filelist:
        filename = os.path.basename(file)
        filename_noext, ext = os.path.splitext(filename)
        if ext == ".ipynb":
            print(f"[{filename_noext}](./{notebook_folder}/{urllib.parse.quote(file)})")
            print()

if __name__ == "__main__":
    main()
