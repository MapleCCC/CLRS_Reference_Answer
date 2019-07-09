MAKEFLAGS += .silent

SOURCE_DIR:=raw_posts
RAW_POSTS:=$(notdir $(wildcard $(SOURCE_DIR)/*.md))

vpath %.md $(SOURCE_DIR)

md: $(RAW_POSTS:.md=.MD)

%.MD: %.md
	python -m readme2tex "$<" --output "$@" --nocdn

html:

preview:
	grip -b index.MD

clean:
	rm -rf svgs

.PHONY: md html preview clean
