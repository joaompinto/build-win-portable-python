#!/usr/bin/env python
import os
import sys
import zipfile
import pip
from os.path import exists

def zipdir(path, ziph):
    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        for file in files:
            ziph.write(os.path.join(root, file))

if __name__ == '__main__':
    zipf = zipfile.ZipFile(sys.argv[2], 'w', zipfile.ZIP_DEFLATED)
    zipdir(sys.argv[1], zipf)
    zipf.close()
    