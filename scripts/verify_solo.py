import os
import sys
import threading
import time
import logging
from SolO.sourcegen import UnParse, Optimizer
from solidity_parser import parser

# create logger
logger = logging.getLogger('SolO')
logger.setLevel(logging.DEBUG)

# create console handler and set level to debug
ch = logging.StreamHandler()
ch.setLevel(logging.DEBUG)

# create formatter
formatter = logging.Formatter(
    '%(asctime)s - %(name)s - %(levelname)s - %(message)s')

# add formatter to ch
ch.setFormatter(formatter)

# add ch to logger
logger.addHandler(ch)

# create .log file
fh = logging.FileHandler('SolO.log')
fh.setLevel(logging.DEBUG)
fh.setFormatter(formatter)
logger.addHandler(fh)

# do a walk on github_contracts folder
# and get all the contracts
# then parse them using a thread pool
# then optimize them using a thread pool
# then unparse them using a thread pool
# then check if it raises any error
# if there is an error, log it
# else do nothing


def get_contracts():
    """
    Get the contracts
    :return:
    """
    codes = []
    # walk through the folder
    for root, dirs, files in os.walk("./github_contracts"):
        for file in files:
            if file.endswith(".sol"):
                # print(os.path.join(root, file))
                codes.append(os.path.join(root, file))
    return codes


def parse_contract(contract):
    """
    Parse the contract
    :param contract:
    :return:
    """
    return parser.parse(open(contract, 'r').read())


def unparse_contract(contract):
    """
    Unparse the contract
    :param contract:
    :return:
    """
    return UnParse(contract)


def optimize_contract(contract):
    """
    Optimize the contract
    :param contract:
    :return:
    """
    return Optimizer(contract).ast


def verify_contract(contract):
    """
    Verify the contract
    :param contract:
    :return:
    """
    try:
        logger.debug("Verified contract: {}".format(contract))
        ast = parse_contract(contract)
        ast = optimize_contract(ast)
        # unparse_contract(ast)
        print(unparse_contract(ast))
    except Exception as e:
        logger.error("Error in contract: {}".format(contract))
        logger.error(e)
        raise e


def main_t():
    """
    Main function
    :return:
    """
    # get the contracts
    contracts = get_contracts()
    print("Number of contracts: {}".format(len(contracts)))
    # create a thread pool
    pool = []
    # create a lock
    lock = threading.Lock()
    # create a thread for each contract
    for contract in contracts:
        # create a thread
        t = threading.Thread(target=verify_contract, args=(contract,))
        # start the thread
        t.start()
        # add the thread to the pool
        pool.append(t)
    # join the threads
    for t in pool:
        t.join()


def main():
    """
    Main function
    :return:
    """
    # get the contracts
    contracts = get_contracts()
    print("Number of contracts: {}".format(len(contracts)))

    for contract in contracts:
        verify_contract(contract)


if __name__ == "__main__":
    main()
