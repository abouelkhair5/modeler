toy:
	test -f venv/bin/activate || virtualenv -p $(shell which python) venv
	. venv/bin/activate ; \
		pip install numpy scipy scikit-learn ; \
		python model.py -t ../../data/train_toy/ -u ../../data/test_toy/ -m mean -c 0 -v > ../../data/output/toy-results.txt

5gcamflow:
	python model.py -t ~/ds/camflow/30-04-2024/train/ -u ~/ds/camflow/30-04-2024/test/ -v > ~/ds/camflow/30-04-2024/unicorn-results.txt

example:
	test -f venv/bin/activate || virtualenv -p $(shell which python) venv
	. venv/bin/activate ; \
		pip install numpy scipy sklearn ; \
		python model.py -h

clean:
	rm -rf venv
