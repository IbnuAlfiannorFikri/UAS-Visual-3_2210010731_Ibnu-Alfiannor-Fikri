from PyQt6.QtWidgets import QMainWindow
from PyQt6.uic import loadUi

class user(QMainWindow):
    def __init__(self):
        super().__init__()
        loadUi('user.ui',self)

        self.btn_login.clicked.connect(self.login)

    def login(self):
        iduser = self.edit_id_user.text()
        nama = self.edit_nama.text()
        password = self.edit_password.text()
        print(iduser + "|" + nama + "|" + password)