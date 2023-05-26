import os
import shutil
import tempfile
from urllib.request import urlopen
from bs4 import BeautifulSoup
from git import Repo

# URL to search Solidity repositories on GitHub
url = "https://github.com/search?l=Solidity&q=solidity&type=repositories"

# Temporary directory for cloning repositories
tmp_dir = tempfile.mkdtemp()

# Target directory for Solidity files
target_dir = os.path.join(os.getcwd(), 'github_contracts')
os.makedirs(target_dir, exist_ok=True)

# Parse HTML
html = urlopen(url)
bs = BeautifulSoup(html.read(), 'html.parser')

# Find repository links
repo_links = bs.findAll('a', {'class': 'v-align-middle'})

for link in repo_links:
    repo_url = "https://github.com" + link['href']
    print(f"Cloning {repo_url}...")

    # Clone repository
    try:
        Repo.clone_from(repo_url, os.path.join(tmp_dir, link['href'].replace('/', '_')))
    except Exception as e:
        print(f"Failed to clone {repo_url}: {e}")
        continue

# Find Solidity files and copy them to target directory
for root, dirs, files in os.walk(tmp_dir):
    for file in files:
        if file.endswith('.sol'):
            print(f"Copying {file} to {target_dir}")
            shutil.copy(os.path.join(root, file), target_dir)

# Clean up
shutil.rmtree(tmp_dir)
