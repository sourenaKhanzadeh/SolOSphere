import openai
from dotenv import load_dotenv
import os

load_dotenv()

# This is your secret OpenAI API key
openai.api_key = os.getenv("OPENAI_API_KEY")


# A function to generate a Solidity contract
def generate_solidity_contract(index):
    response = openai.Completion.create(
        engine="text-davinci-003",  # use "text-davinci-003" for GPT-3
        prompt=f"Generate a complex unoptimized that uses  loops and etc as Solidity contract named complex{index}",
        temperature=0.5,
        max_tokens=500
    )

    # The generated contract
    return response.choices[0].text.strip()


def generate_mutated_contracts(file, index):
    with open(file, 'r') as f:
        source_code = f.read()
    response = openai.Completion.create(
        engine="text-davinci-003",  # use "text-davinci-003" for GPT-3
        prompt=f"Mutate the contract in {source_code} and generate a Solidity contract named mutated{index}",
        temperature=0.5,
        max_tokens=1000
    )

    # The generated contract
    return response.choices[0].text.strip()


folder = "custom_contracts"
MUTATE = True
FILE_TO_MUTATE = os.path.join('custom_contracts', 'simple4.sol')


# Generate 1000 unique .sol files
for i in range(6, 51):
    if MUTATE:
        contract_code = generate_mutated_contracts(FILE_TO_MUTATE, i)
    else:
        contract_code = generate_solidity_contract(i)

    if not os.path.exists(folder):
        os.mkdir(folder)

    # Write the contract code to a .sol file
    with open(f"{folder}/mutate{i}.sol", "w") as file:
        print("Writing contract to file... contract number: ", i)
        file.write(contract_code)
