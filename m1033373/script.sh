diff -qr srcDir destDir > outputs/output
grep -i "File" output > outputs/FilesDiffOutput
grep -iv "File" output > outputs/DirLinksDiffOutput
