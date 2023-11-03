import requests
from typing import Callable
import argparse


def grab_code(url: str) -> str:
    """Grab the code from a URL."""
    return requests.get(url).text


def save_code(grab: Callable[[str], str], url: str, path: str) -> None:
    """Grab the code from a URL and save it to a file."""
    code = grab(url)
    with open(path, 'w') as f:
        f.write(code)


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
    if args.grab:
        save_code(grab_code, args.url, args.path)
    else:
        raise ValueError('Unknown grab function: {}'.format(args.grab))


command()
