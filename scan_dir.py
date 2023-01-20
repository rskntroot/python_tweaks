import re

from os import walk

def scan_dir(query: str, dir: str, depth: int = 0, ignore_hidden: bool = True, debug: bool = True):
    print(f"Scanning {dir} for {query} directories...")
    directory_list = []
    total_depth = len(re.findall(r"/[^$]", dir)) + depth - 1
    for root, dirs, files in walk(dir):
        if depth > 0 and len(re.findall(r"/", root)) > total_depth:
            dirs.clear()
        if bool(re.search(r"/\.", root)):
            if ignore_hidden:
                dirs.clear()
                continue
        if bool(re.search(re.compile(query), root)):
            print(root) if debug else None
            directory_list.append(root)
    print("Completed") if debug else None
    return directory_list
