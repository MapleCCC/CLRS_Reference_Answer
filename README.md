# CLRS Reference Answer

## Intro

Personal answers to exercises and assignments in the textbook *Introduction to Algorithms (3rd ed.)*, conventionally abbreviated *CLRS*.

Note that contents in the repository are **NOT** official solutions; only intended for reference usage.

There should inevitably be mistakes and places that need improvements. Pull requests or issues are welcome.

## Table of Contents

[Chapter 3](./Chapter_3.md)

## Development

```bash
# clone the repository to local machine
git clone https://github.com/MapleCCC/CLRS_Reference_Answer
cd CLRS_Reference_Answer

# install dependencies
pip install -r requirements.txt

# modify contents under the /raw_posts/ directory

# generate stylized markdown files
make md
```

Optionally, use command `make html` to generate stylized HTML files. Use command `make preview` to preview markdown files in GitHub flavor style. (This functionality uses [grip](https://github.com/joeyespo/grip) under the hood, and it needs network access to GitHub server.)

## Reference

Cormen, Thomas H.; Leiserson, Charles E.; Rivest, Ronald L.; Stein, Clifford (2009) [1990]. Introduction to Algorithms (3rd ed.). MIT Press and McGraw-Hill. ISBN 0-262-03384-4.
