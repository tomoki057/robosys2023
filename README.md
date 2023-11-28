# robosys2023
[![test](https://github.com/tomoki057/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/tomoki057/robosys2023/actions/workflows/test.yml)

* このレポジトリは、2023年度ロボットシステム学の講義内で作成したpythonプログラムを、シェルスクリプトの挙動の確認をするテストでバッシュしたものをgithubに公開したものになります。

## インストール方法
* 以下のコードでクローンする
```
git clone git@github.com:tomoki057/robosys2023.git
```
* クローンを行った後は以下のコードでディレクトリに移動する

```
cd robosys2023
```

## 実行結果

### plusコマンド
* このコマンドは、0から足し算を行うコマンドであり、実行方法と実行結果は以下のようになる

```
###実行方法###
$ seq 5 | ./plus

###実行結果###
15
```

### subコマンド
* このコマンドは、0から引き算を行うコマンドであり、実行方法と実行結果は以下のようになる

```
###実行方法###
$ seq 5 | ./sub

###実行結果###
-15
```

### multiコマンド
* このコマンドは、１から掛け算を行うコマンドであり、実行方法と実行結果は以下のようになる

```
###実行方法###
$ seq 5 | ./multi

###実行結果###
120
```

### divコマンド
* このコマンドは、１から割り算を行うコマンドであり、実行方法と実行結果は以下のようになる

```
###実行方法###
$ seq 5 | ./div

###実行結果###
0.008333333333333333
```

## 必要なソフトウェア
* Python
  * テスト済み: 3.7, 3.8, 3.9, 3.10

## テスト環境
* Ubuntu 20.04.6 LTS

## 著作権・ライセンス 
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    *[ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Tomoki sato
