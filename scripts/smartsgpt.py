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


folder = "gpt_contracts_2"

# Generate 1000 unique .sol files
for i in range(1, 2):
    contract_code = generate_solidity_contract(i)

    if not os.path.exists(folder):
        os.mkdir(folder)

    # Write the contract code to a .sol file
    with open(f"{folder}/complex{i}.sol", "w") as file:
        print("Writing contract to file... contract number: ", i)
        file.write(contract_code)
