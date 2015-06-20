__author__ = 'liam'

from kaggle import KaggleCompetition, Kaggle

Kaggle.__credentials__ = '/vagrant/kaggle.yml'


class Word2Vec(KaggleCompetition):
    __full_name__ = 'word2vec-nlp-tutorial'
    __short_name__ = 'word2vec'
    __data_path__ = '/home/vagrant/data/word2vec'
