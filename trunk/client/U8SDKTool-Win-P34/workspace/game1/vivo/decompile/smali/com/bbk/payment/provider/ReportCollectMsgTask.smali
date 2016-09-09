.class public Lcom/bbk/payment/provider/ReportCollectMsgTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bbk/payment/network/NetworkRequestAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/UtilTool;->isNetworkAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_22

    const-string v1, "ReportCollectMsgTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network is valid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-eqz v0, :cond_134

    invoke-static {}, Lcom/bbk/payment/util/UtilTool;->isUploading()Z

    move-result v0

    if-nez v0, :cond_128

    const/4 v0, 0x1

    :try_start_2b
    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->setUploading(Z)V

    new-instance v0, Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v1, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bbk/payment/network/NetworkRequestAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->b:Lcom/bbk/payment/network/NetworkRequestAgent;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v3, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const-string v3, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sysver"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getVersionNeme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    const-string v4, "2.0.2"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_107

    const-string v2, "imei"

    const-string v3, "IMEI is null"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_86
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/bbk/payment/provider/ReportCollectMsgTask;->readEventInfoToJson(J)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_123

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->b:Lcom/bbk/payment/network/NetworkRequestAgent;

    iget-object v3, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->a:Landroid/content/Context;

    const-string v4, "http://comm.inner.bbk.com/vcoineventpoint/app/collect"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/bbk/payment/network/NetworkRequestAgent;->sendCollectMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v3, :cond_bf

    const-string v3, "ReportCollectMsgTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send collect message ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "200"

    const-string v3, "stat"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v1, :cond_dd

    const-string v1, "ReportCollectMsgTask"

    const-string v2, "send collect message successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->deleteUsageData(Landroid/content/Context;J)I

    move-result v0

    const-string v1, "ReportCollectMsgTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete SettingTable Info success ,Count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    :goto_fb
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->setUploading(Z)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_ff} :catch_112

    :cond_ff
    :goto_ff
    invoke-static {v7}, Lcom/bbk/payment/util/UtilTool;->setUploading(Z)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_107
    :try_start_107
    const-string v3, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_110} :catch_112

    goto/16 :goto_86

    :catch_112
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ff

    :cond_117
    :try_start_117
    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_fb

    const-string v0, "ReportCollectMsgTask"

    const-string v1, "send collect message failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    :cond_123
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->setUploading(Z)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_127} :catch_112

    goto :goto_ff

    :cond_128
    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_ff

    const-string v0, "ReportCollectMsgTask"

    const-string v1, "uploading collect msg now!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    :cond_134
    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_ff

    const-string v0, "ReportCollectMsgTask"

    const-string v1, "Network is unavailable or network is not wifi,can\'t upload data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/provider/ReportCollectMsgTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bbk/payment/provider/ReportCollectMsgTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public readEventInfoToJson(J)Lorg/json/JSONArray;
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/bbk/payment/provider/PaymentUsageUtils;->selectUsageData(Landroid/content/Context;J)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7f
    .catchall {:try_start_1 .. :try_end_6} :catchall_8b

    move-result-object v1

    if-eqz v1, :cond_a3

    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_98
    .catchall {:try_start_9 .. :try_end_17} :catchall_93

    :cond_17
    :try_start_17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "eventcode"

    const-string v4, "eventcode"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventvalue"

    const-string v4, "eventvalue"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventtime"

    const-string v4, "eventtime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "packageName"

    const-string v4, "packageName"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    const-string v4, "uid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_73} :catch_9e
    .catchall {:try_start_17 .. :try_end_73} :catchall_93

    move-object v0, v3

    :goto_74
    if-eqz v1, :cond_79

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/bbk/payment/provider/ReportCollectMsgTask;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->closeUsageData(Landroid/content/Context;)V

    return-object v0

    :catch_7f
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_82
    :try_start_82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_95

    if-eqz v2, :cond_79

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_79

    :catchall_8b
    move-exception v0

    move-object v1, v2

    :goto_8d
    if-eqz v1, :cond_92

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_92
    throw v0

    :catchall_93
    move-exception v0

    goto :goto_8d

    :catchall_95
    move-exception v0

    move-object v1, v2

    goto :goto_8d

    :catch_98
    move-exception v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_82

    :catch_9e
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_82

    :cond_a3
    move-object v0, v2

    goto :goto_74
.end method
