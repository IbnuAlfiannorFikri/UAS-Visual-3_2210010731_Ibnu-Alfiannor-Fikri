import sys
from PyQt6.QtWidgets import QApplication
from user import user

if __name__=="__main__":
    aplikasi =QApplication(sys.argv)
    tampilForm = user()
    tampilForm.show()
    sys.exit(aplikasi.exec())

