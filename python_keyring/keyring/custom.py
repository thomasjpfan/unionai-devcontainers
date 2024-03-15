from os import getenv
from keyrings.cryptfile.cryptfile import CryptFileKeyring

class CustomCryptFileKeyring(CryptFileKeyring):
    def __init__(self):
        self._keyring_key = getenv("KEYRING_CRYPTFILE_PASSWORD")
