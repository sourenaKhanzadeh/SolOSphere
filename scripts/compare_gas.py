from brownie import compile_source, accounts, network
from dotenv import load_dotenv
import os

load_dotenv()
accounts.add(os.getenv('PRIVATE_KEY'))

# connect to the ganache-cli
# network.connect('development')


def deploy_contract(contract, account):
    print(f'Deploying contract... {contract._name}')
    deployed_contract = contract.deploy({"from": account})
    return deployed_contract


def compare_gas(contract1_source, contract2_source, name1, name2):
    with open(contract1_source, 'r') as f:
        source_code1 = f.read()
    with open(contract2_source, 'r') as f:
        source_code2 = f.read()

    try:
        contract1_interface = compile_source(source_code1)
    except Exception as e:
        print(f"Skipping contract1 {name1} due to compilation error: {e}")
        return False

    try:
        contract2_interface = compile_source(source_code2)
    except Exception as e:
        print(f"Skipping contract2 {name2} due to compilation error: {e}")
        return False

    for name1 in contract1_interface.keys():
        for name2 in contract2_interface.keys():
            contract1 = contract1_interface[name1]
            contract2 = contract2_interface[name2]

            deployer = accounts[0]

            deployed_contract1 = deploy_contract(contract1, deployer)
            deployed_contract2 = deploy_contract(contract2, deployer)

            table = {'contract1': {'name': name1, 'gas': deployed_contract1.tx.gas_used}, 'contract2': {'name': name2, 'gas': deployed_contract2.tx.gas_used}}
            print(f'Contract1 {name1} deployment gas used:', deployed_contract1.tx.gas_used)
            print(f'Contract2 {name2} deployment gas used:', deployed_contract2.tx.gas_used)

            for func in contract1.abi:
                if func['type'] == 'function':
                    # Get the function from the contract
                    function1 = getattr(deployed_contract1, func['name'])
                    function2 = getattr(deployed_contract2, func['name'])

                    # Make sure function1 and function2 are callable
                    if callable(function1) and callable(function2):
                        try:
                            # Create a transaction dictionary
                            tx = {'from': deployer}

                            # estimate the gas
                            # Note: This will only work if the function doesn't require parameters or if you provide them.
                            estimate1 = function1.estimate_gas(tx)
                            estimate2 = function2.estimate_gas(tx)

                            print(f'Function {func["name"]} gas usage: Contract1: {name1} - {estimate1}, Contract2: {name2} - {estimate2}')
                            # save the gas usage in the table
                            table[func['name']] = {'contract1': estimate1, 'contract2': estimate2}
                        except Exception as e:
                            # This will skip the function if it's not possible to estimate gas,
                            # for example if the function has required parameters.
                            print(f"Couldn't estimate gas for {func['name']}: {e}")

    # save the table to a file
    with open('gas_table.txt', 'a+') as f:
        f.write(str(table))
        f.write('\n')

    return deployed_contract1.tx.gas_used < deployed_contract2.tx.gas_used

