実行環境: CentOS 7.3

実行方法
1. FileListファイルにアクセスログの絶対パスを書く。
　もしくは同じフォルダ内にアクセスログを格納し、FileListにファイル名を記載する。
　複数ある場合はすべてのアクセスログに対して同様にする。

2. OptionファイルのFlagを指定する。
　Flag=1: 期間、時間帯の指定をせず、アクセスログのリモートホスト別のアクセス件数を集計する場合
　Flag=2: 期間を指定する場合
　Flag=3: 時間帯を指定する場合
　Flag=4: 期間、時間帯の両方を指定する場合

2.1 期間を指定する場合、例に従い日付を指定する。
例　開始日: PeriodIni=2005/04/18
　　終了日: PeriodFin=2005/05/18

2.2 時間帯を指定する場合、例に従い時間を指定する。
例　開始時間: TimeIni=00:00:00
　　終了時間: TimeFin=01:00:00

3. 下記のコマンドで実行する
　./AcsAnl.sh FileList Option

出力について
　AcsAnl.logに処理結果が出力される。
　期間、時間帯を指定した場合は頭にそれらが記載される。
　続いて合計アクセス数、リモートホストごとのアクセス数が記載される。
　出力結果はアクセスの多いリモートホストの順にソートされている。
　
　指定した期間、時間帯にアクセスがない場合、No Accessと出力される。

