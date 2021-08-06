from work_place import *
from math import *

class Mine(WorkPlace):

    def __init__(self,name):
       super(Mine, self).__init__(name)
       self.expertise="mine"

    def calc_capacity(self):
        self.capacity = int(self.level*self.level)

    def calc_costs(self):
        return int((Consts.LEVEL_MUL) * int(self.level)) + int(Consts.BASE_PLACE_COST)