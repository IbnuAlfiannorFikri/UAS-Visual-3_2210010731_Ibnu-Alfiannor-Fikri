from PyQt6.QtWidgets import QMainWindow
from PyQt6.uic import loadUi

class partai(QMainWindow):
    def __init__(self):
        super().__init__()
        loadUi('profil_partai.ui',self)

        self.btn_simpan.clicked.connect(self.partai)

    def partai(self):
        idprofilpartai = self.edit_id_profil_partai.text()
        namapartaipolitik = self.edit_nama_partai_politik.text()
        namaketua = self.edit_nama_ketua.text()
        namawakil = self.edit_nama_wakil.text()
        print(idprofilpartai + "|" + namapartaipolitik + "|" + namaketua + "|" + namawakil)