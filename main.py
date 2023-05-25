import sys
import os
import subprocess
import shutil
from SolO.sourcegen import UnParse, Optimizer
from solidity_parser import parser


def get_unoptimized_contracts():
    """
    Get the unoptimized contracts
    :return:
    """
    codes = []
    # walk through the folder
    for root, dirs, files in os.walk("./contracts/unOptimized_contracts"):
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


def compare_gas(contract1, contract2):
    """
    Compare the gas of two contracts
    :param contract1:
    :param contract2:
    :return:
    """
    os.system("cd SolOLab")
    subprocess.run(['node', 'compare_gas.js', 'compare', contract1, contract2])
    os.system("cd ..")


def main():
    """
    Main function
    :return:
    """
    # get the unoptimized contracts
    contracts = get_unoptimized_contracts()
    # parse the contracts
    parsed_contracts = [parse_contract(contract) for contract in contracts]
    # optimize the contracts
    optimized_contracts = [optimize_contract(contract) for contract in parsed_contracts]
    # unparse the contracts
    unparsed_contracts = [unparse_contract(contract) for contract in optimized_contracts]
    # write the contracts to optimized folder contracts/optimized_contracts
    for i in range(len(contracts)):
        optimized_contract_path = os.path.join("./contracts/optimized_contracts/", os.path.basename(contracts[i]))
        try:
            with open(optimized_contract_path, "w") as f:
                print(unparsed_contracts[i])
                f.write(unparsed_contracts[i].result)
        except Exception as e:
            print(f"Error writing contract: {str(e)}")

    # compare the gas of the contracts
    for i in range(len(contracts)):
        if compare_gas(contracts[i], os.path.join("./contracts/optimized_contracts/", os.path.basename(contracts[i]))):
            print(f"Contract {contracts[i]} is optimized")
        else:
            print(f"Contract {contracts[i]} is not optimized")


if __name__ == "__main__":
    main()



