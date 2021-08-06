def decorator(validator):
    def type_checker(func):
        def ret(*args,**kwargs):
            if validator(*args,**kwargs)==True:
                return func(*args,**kwargs)
            else:
                return 'error'
        return ret
    return type_checker