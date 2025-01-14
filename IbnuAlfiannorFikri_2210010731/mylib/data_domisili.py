from PyQt6.QtWidgets import QMainWindow
from PyQt6.uic import loadUi

class domisili(QMainWindow):
    def __init__(self):
        super().__init__()
        loadUi('data_domisili.ui',self)

        self.btn_submit.clicked.connect(self.domisili)

    def domisili(self):
        iddomisili = self.edit_id_domisili.text()
        namapartaipolitik = self.edit_nama_partai_politik.text()
        domisili = self.edit_domisili.text()
        alamat = self.edit_alamat.text()
        namapengurus = self.edit_nama_pengurus.text()

        print(iddomisili+"|"+namapartaipolitik+"|"+domisili+"|"+alamat+"|"+namapengurus)

