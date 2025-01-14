from PyQt6.QtWidgets import QMainWindow
from PyQt6.uic import loadUi


class anggota(QMainWindow):
    def __init__(self):
        super().__init__()
        loadUi('data_anggota.ui',self)

        self.btn_simpan.clicked.connect(self.anggota)

    def anggota(self):
        idanggota = self.edit_id_anggota.text()
        nama = self.edit_nama.text()
        partai = self.edit_partai.text()
        notelpon = self.edit_no_telpon.text()
        jabatan = self.edit_jabatan.text()
        domisili = self.edit_domisili.text()
        pendidikan = self.edit_pendidikan.text()
        print(idanggota +"|"+nama +"|"+partai+"|"+notelpon+"|"+jabatan+"|"+domisili+"|"+pendidikan)


