import os
import re

def walklevel(dir: str, depth: int = 0, ignore_hidden: bool = False):
    """Walk a given directory. 
    Specify depth to limit size. Values < 1 will ignore depth. 
    Bool to ignore hidden files.
    """
    total_depth = len(re.findall(r"/[^$]", dir)) + depth - 1
    for root, dirs, files in os.walk(dir):
        if depth > 0 and len(re.findall(r"/", root)) > total_depth:
            dirs.clear()
        if bool(re.search(r"/\.", root)):
            if ignore_hidden == True:
                dirs.clear()
                continue
        print(root)
