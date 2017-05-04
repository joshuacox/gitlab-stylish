all: clean build miniclip show

SCHWARZ=gitlab
INPUT_SASS=${SCHWARZ}.scss
OUTPUT_CSS=${SCHWARZ}.css
MIN_CSS=${SCHWARZ}.css.min

build:
	sass ${INPUT_SASS} ${OUTPUT_CSS}
	minify -o ${MIN_CSS} ${OUTPUT_CSS}

clean:
	-@rm -f ${OUTPUT_CSS}
	-@rm -f ${OUTPUT_CSS}.map

clip:
	-@cat ${OUTPUT_CSS}|xclip -i  -selection clipboard

miniclip:
	-@cat ${MIN_CSS}|xclip -i  -selection clipboard

test:
	sass -c ${INPUT_SASS}

node_modules:
	npm install

showhogs:
	bash ./hogs

show:
	ls -lh ${MIN_CSS}
