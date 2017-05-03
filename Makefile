all: clean build clip

SCHWARZ=gitlab
INPUT_SASS=${SCHWARZ}.scss
OUTPUT_CSS=${SCHWARZ}.css

build:
	sass ${INPUT_SASS} ${OUTPUT_CSS}

clean:
	-@rm -f ${OUTPUT_CSS}
	-@rm -f ${OUTPUT_CSS}.map

clip:
	-@cat ${OUTPUT_CSS}|xclip -i  -selection clipboard

test:
	sass -c ${INPUT_SASS}
