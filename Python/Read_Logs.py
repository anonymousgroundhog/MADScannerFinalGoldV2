import pandas as pd, sys

def read_and_transform_file(file_path):
    # Read the file line by line
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Split each line by the delimiter '---'
    # data = [line.strip().split('---') for line in lines]
    data = [line.split('---') for line in lines]

    # Create a pandas DataFrame
    df = pd.DataFrame(data, columns=['Timestamp', 'App', 'Hash', 'Provider', 'Method', 'Arguments', 'ReturnValue'])

    return df

# Example usage
# file_path = 'input.txt'  # Replace this with the path to your text file
# df = read_and_transform_file(file_path)
# print(df)

print(read_and_transform_file(sys.argv[1]))