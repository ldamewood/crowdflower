__author__ = 'liam'

from kaggle import KaggleCompetition, Kaggle

Kaggle.__credentials__ = '/vagrant/kaggle.yml'


class CrowdFlower(KaggleCompetition):
    __full_name__ = 'crowdflower-search-relevance'
    __short_name__ = 'crowdflower'
    __data_path__ = '/home/vagrant/data/crowdflower'
