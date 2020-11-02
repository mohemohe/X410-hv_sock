# X410-hv_sock

WSL2のクソさにほとほと疲れたので、Hyper-Vのhv_sockとX410でシームレスなLinux GUI環境を構築するスクリプト

## インストール

### Windows

`GuestCommunicationServices.reg` を登録する

### Linux

```sh
cp x410.sample x410
```

環境に合わせて書き換える

```sh
sudo make install
```

## アンインストール

### Windows

頑張れ

### Linux

```sh
sudo make uninstall
```