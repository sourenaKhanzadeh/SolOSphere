import os
import shutil

from solidity_parser import parser
from SolO.sourcegen import UnParse
from SolO.sourcegen import Optimizer


def main():
    # read from gpt_contracts folder
    codes = []
    # walk through the folder
    for root, dirs, files in os.walk("./custom_contracts"):
        for file in files:
            if file.endswith(".sol"):
                # print(os.path.join(root, file))
                codes.append(os.path.join(root, file))

    for code in codes:
        try:
            ast = parser.parse(open(code, 'r').read())
            # pprint(ast)
            # print()
            # for contract in ast['children']:
            #     if contract.get('type') == 'ContractDefinition':
            #         optimize_contract(contract['subNodes'])
            ast = Optimizer(ast).ast

            print(UnParse(ast))

            shutil.copy(code, f"../contracts/unOptimized_contracts/{code.split('/')[-1]}")
        except Exception as e:
            print(e)
            continue


if __name__ == "__main__":
    main()
