class Registers:
    def __init__():
        _AA = 0
        _BB = 0
        _CC = 0
        _DD = 0

        _SP = 0
        _PC = 0

        _CC = 0
        _ZC = 0
        _NC = 0

    def %AA(self, r = -9999):
        if r != -9999:
            _AA = r
        return _AA

    def %BB(self, r = -9999):
        if r != -9999:
            _BB = r
        return _BB

    def %CC(self, r = -9999):
        if r != -9999:
            _CC = r
        return _CC

    def %DD(self, r = -9999):
        if r != -9999:
            _DD = r
        return _DD

    def %SP(self, r = -9999):
        if r != -9999:
            _SP = r
        return _SP

    def %PC(self, r = -9999):
        if r != -9999:
            _PC = r
        return _PCA

    def %CC(self, r = -9999):
        if r != -9999:
            _CC = r
        return _CC

    def %ZC(self, r = -9999):
        if r != -9999:
            _ZC = r
        return _ZC

    def %NC(self, r = -9999):
        if r != -9999:
            _NC = r
        return _NC
