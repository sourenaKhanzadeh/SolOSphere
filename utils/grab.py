import requests
from typing import Callable
import argparse
import os
import dotenv
import github


dotenv.load_dotenv('../.env')


def grab_code(url: str) -> str:
    """Grab the code from a URL."""
    return requests.get(url).text


def save_code(grab: Callable[[str], str], url: str, path: str) -> None:
    """Grab the code from a URL and save it to a file."""
    code = grab(url)
    with open(path, 'w') as f:
        f.write(code)


def grab_folder(_id: int, url: str) -> list:
    """Grab the codes recursively."""
    g = github.Github(os.getenv('GITHUB_ACCESS_USERNAME'), os.getenv('GITHUB_ACCESS_PASSWORD'))
    user = g.get_user_by_id(_id)
    repos = user.get_repos()
    for repo in repos:
        # get the targeted repo
        if repo.name == "solidity-nicad":
            data = repo.get_contents("data/smart_contracts")
            # save data in a folder named nicad_contracts
            if not os.path.exists("../scripts/nicad_contracts"):
                os.mkdir("../scripts/nicad_contracts")
            for file in data:
                # save the files in the folder
                if file.name.endswith(".sol"):
                    save_code(grab_code, file.download_url, "nicad_contracts/" + file.name)

def command() -> None:
    """
    Command line interface for grab.py
    :return:
    """
    parser = argparse.ArgumentParser(description='Grab code from a URL.')
    parser.add_argument('url', type=str, help='URL to grab code from.')
    parser.add_argument('path', type=str, help='Path to save code to.')
    parser.add_argument('--grab', type=str, default='grab_code', help='Grab function to use.')
    args = parser.parse_args()
    if args.grab == "grab_folder":
        grab_folder(int(args.path), args.url)
    if args.grab:
        save_code(grab_code, args.url, args.path)
    else:
        raise ValueError('Unknown grab function: {}'.format(args.grab))


command()
