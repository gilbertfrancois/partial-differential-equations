import glob
import os
import urllib.parse


def main():
    filelist = os.listdir()
    filelist = sorted(filelist)
    for file in filelist:
        filename = os.path.basename(file)
        filename_noext, ext = os.path.splitext(filename)
        if ext == ".ipynb":
            print(f"[{filename_noext}](./{urllib.parse.quote(file)})")

if __name__ == "__main__":
    main()
