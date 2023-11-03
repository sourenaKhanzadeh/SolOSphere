import os
import sys
import subprocess
import argparse
import tqdm


def parse_unparse_contracts(txl: str, paths: list) -> None:
    """
    Parse and unparse contracts.
    using TXL
    :return:
    """
    errors = []
    outputs = []
    # for each file in the contracts folder
    # do the command 'txl ?.sol ?.txl'
    for path in paths:
        # get the files in the contracts folder
        for p in os.listdir(path):
            if p.endswith('.sol'):
                ps = os.path.abspath(os.path.join(path, p))
                # get errors and output from txl
                out, err = (subprocess.Popen(['txl', txl, ps], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                            .communicate())
                tqdm.tqdm.write('Parsing {}'.format(ps))
                # if there are errors
                if err:
                    tqdm.tqdm.write('Errors:')
                    tqdm.tqdm.write(err.decode('utf-8'))
                    errors.append(ps)
                # if there is output
                if out:
                    tqdm.tqdm.write('Output:')
                    tqdm.tqdm.write(out.decode('utf-8'))
                    outputs.append(ps)

    # show progress bar showing the number of files parsed and did not parse
    tqdm.tqdm.write('Parsed: {}'.format(len(outputs)))
    tqdm.tqdm.write('Errors: {}'.format(len(errors)))


def command() -> None:
    """
    Command line interface for verify_txl.py
    :return:
    """
    parser = argparse.ArgumentParser(description='Parse and unparse contracts using TXL.')
    parser.add_argument('txl', type=str, help='TXL file to use.')
    parser.add_argument('paths', type=str, nargs='+', help='Paths to parse and unparse.')
    args = parser.parse_args()
    parse_unparse_contracts(args.txl, args.paths)


command()
