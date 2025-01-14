from PyQt6.QtWidgets import QMainWindow
from PyQt6.uic import loadUi

class kepengurusan(QMainWindow):
    def __init__(self):
        super().__init__()
        loadUi('kepengurusan.ui',self)

        self.btn_simpan.clicked.connect(self.kepengurusan)

    def kepengurusan(self):
        idkepengurusan = self.edit_id_kepengurusan.text()
        namapengurus = self.edit_nama_pengurus.text()
        partaipolitikyangdiurus = self.edit_partai_politik_yang_diurus.text()
        kewenangan = self.edit_kewenangan.text()
        print(idkepengurusan +"|"+namapengurus +"|"+partaipolitikyangdiurus +"|"+kewenangan)