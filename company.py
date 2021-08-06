from work_place import *
from math import *

class Company(WorkPlace):

    def __init__(self,name):
       super(Company, self).__init__(name)
       self.expertise="company"

    def calc_capacity(self):
        self.capacity= int(self.level)

    def calc_costs(self):
        return int(Consts.BASE_PLACE_COST) *int(self.level)



