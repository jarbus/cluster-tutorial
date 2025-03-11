# make a directory called /data/$whoami/my_output and write a file called output.txt in it
import os
import sys
import getpass

input_path = sys.argv[1]
output_path = sys.argv[2]


def main():
    print(f"Input path: {input_path}")
    print(f"Output path: {output_path}")
    out_file = os.path.join(output_path, "output.txt")
    whoami = getpass.getuser()
    os.makedirs(output_path, exist_ok=True)
    with open(out_file, 'w') as f:
        f.write('Hello, world!\n')
    print(f"Output written to {out_file}")

main()
