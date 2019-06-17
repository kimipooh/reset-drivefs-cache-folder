# reset-drivefs-cache-folder

This is the batch file for Windows OS.
The aim is to clean up the cache folder of "Google Drive File Stream" program.

Cache folder: %LOCALAPPDATA%\Google\DriveFS

Sometimes, Google Drive File Stream doesn't sync with Google Drive due to the cache folder. By running the batch file, Google Drive File Stream program is finished and the cache folder (DriveFS to DriveFS2) is renamed, and then Google Drive File Stream program is started.

If the renamed cache folder (DriveFS2) exists, the batch file displays the error message and stop the process. Because there may be an unsynchronised data in the renamed cache folder.

Therefore, please confirm to be synced data to Google Drive if possible.

=== Japanese Translation ===

このバッチファイルは Windows OS専用です。
目的は、Google Drive File Stream ソフトのキャッシュフォルダをクリーンアープすることです。

時々、このソフトは Google ドライブと同期しないトラブルが生じします。その場合に、このバッチファイルを実行することで、問題が解決することがあります。このバッチファイルは、ソフトを終了し、キャッシュフォルダの名前変更（DriveFS を DriveFS2へ名前変更）をした上で、ソフトを起動します。

もし、名前変更したキャッシュファイル（DriveFS2）が存在すれば、このバッチファイルは、エラーを表示して処理を停止します。なぜなら、キャッシュフォルダに同期が完了していないデータが入っている可能性があるためです。

そのため、可能であれば、このバッチファイルをつかう前に、Googleドライブにデータが同期されていることを確認するとよいでしょう。
