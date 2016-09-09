.class public Lcom/baidu/android/pushservice/message/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLcom/baidu/android/pushservice/message/PublicMsg;)I
    .registers 20

    invoke-static {p0}, Lcom/baidu/android/pushservice/g/d;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/g/d;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/g/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x6

    :goto_d
    return v2

    :cond_e
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "lightapp_ctrl_keys"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11c

    const-string v3, "lightapp_ctrl_keys"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x1

    const-string v5, "app_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string v5, "app_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3e

    const/4 v2, 0x0

    goto :goto_d

    :cond_3e
    const-string v5, "is_inner"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_50

    const-string v5, "is_inner"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_50

    const/4 v6, 0x2

    :cond_50
    const-string v5, "display_in_notification_bar"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_61

    const-string v5, "display_in_notification_bar"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_61

    const/4 v3, 0x0

    :cond_61
    const-string v5, "enter_msg_center"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13d

    const-string v5, "enter_msg_center"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_13d

    const/4 v2, 0x0

    move v8, v2

    :goto_73
    if-eqz v3, :cond_99

    move-object/from16 v0, p1

    invoke-static {p0, v0, v6}, Lcom/baidu/android/pushservice/message/a/g;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_99

    const/4 v7, 0x1

    const-string v2, "is_merge"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "is_merge"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8f

    const/4 v7, 0x0

    :cond_8f
    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v7}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_99
    if-eqz v8, :cond_b4

    invoke-static {p0}, Lcom/baidu/android/pushservice/g/d;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/g/d;

    move-result-object v7

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move v13, v6

    invoke-virtual/range {v7 .. v14}, Lcom/baidu/android/pushservice/g/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)J

    :cond_b4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.baidu.android.push.lightapp.NEWMSG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "title"

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "content"

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "link"

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "status"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "appid"

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "value"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "com.baidu.android.push.lightapp.NEWMSG.EXTRA"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_11c
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_11c} :catch_11f

    :cond_11c
    :goto_11c
    const/4 v2, 0x1

    goto/16 :goto_d

    :catch_11f
    move-exception v2

    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11c

    :cond_13d
    move v8, v2

    goto/16 :goto_73
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ad_msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "pushService_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service_name"

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.advertise.notification.SHOW"

    iget-object v2, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/android/pushservice/util/q;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/g/d;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/g/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/android/pushservice/g/d;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_70

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6e

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6a

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    const-string v4, "com.baidu.searchbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "com.baidu.voiceassistant"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    :cond_39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_3e
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0x1002908

    if-gt v4, v5, :cond_6a

    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " lightapp msg not blocked by searchbox "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_61} :catch_62

    :cond_61
    :goto_61
    return-object v0

    :catch_62
    move-exception v0

    const-string v0, "NotificationHandler"

    const-string v4, " searchbox not found "

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_6e
    move-object v0, v2

    goto :goto_61

    :cond_70
    move-object v0, v2

    goto :goto_61
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/4 v10, 0x1

    const/high16 v7, 0x10000000

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "msgid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lightapp notify clicked, appid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " host="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "other"

    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&msg_from_type=sdk_push_msg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_214

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_214

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/baidu/android/pushservice/g/d;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/g/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/g/d;->f(Ljava/lang/String;)Lcom/baidu/android/pushservice/i/h;

    move-result-object v6

    const-string v0, "com.baidu.searchbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string v0, "com.baidu.voiceassistant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    :cond_ad
    const-string v0, "searchbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ref_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.baidu.searchbox.action.aloader.VIEW"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.baidu.searchbox.aloaderhost.ALoaderActivity"

    invoke-virtual {v4, v1, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "isBackToLauncher"

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_URL_NEW_WINDOW"

    invoke-virtual {v4, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "src"

    const-string v6, "notification_bar"

    invoke-virtual {v4, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_ef
    const-string v1, "appid"

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v6, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f9
    .catch Lorg/json/JSONException; {:try_start_ef .. :try_end_f9} :catch_119

    :goto_f9
    const-string v1, "pageId"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NotificationHandler"

    const-string v5, "open by searchbox"

    invoke-static {v1, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_10c
    const-string v1, "010201"

    invoke-static {p0, v3, v2, v1, v0}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/android/pushservice/g/d;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/g/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/android/pushservice/g/d;->b(Ljava/lang/String;)Z

    return-void

    :catch_119
    move-exception v1

    const-string v5, "NotificationHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    :cond_137
    if-eqz v6, :cond_1b1

    iget-object v0, v6, Lcom/baidu/android/pushservice/i/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b1

    const-string v0, "com.baidu.searchbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    const-string v0, "searchbox"

    :goto_14b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&ref_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "_lightapp_url"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10020000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "fromPush"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "appid"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "_runtime_act_impl"

    const-string v7, "com.baidu.lappgui.LappHostActivity"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "host_appid"

    iget-object v7, v6, Lcom/baidu/android/pushservice/i/h;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "host_version"

    iget-object v6, v6, Lcom/baidu/android/pushservice/i/h;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.baidu.sumeru.lightapp.activity.LightAppPlayerActivity"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10c

    :cond_1a3
    const-string v0, "com.baidu.netdisk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    const-string v0, "netdisk"

    goto :goto_14b

    :cond_1ae
    const-string v0, "runtime_other"

    goto :goto_14b

    :cond_1b1
    const-string v0, "com.baidu.netdisk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    const-string v0, "netdisk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ref_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_lightapp_url"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10c

    :cond_1e2
    const-string v0, "other"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&ref_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10c

    :cond_214
    const-string v0, "NotificationHandler"

    const-string v1, "open by browser"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "browser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&ref_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.baidu.browser.apps"

    invoke-static {p0, v5}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_257

    const-string v5, "com.baidu.browser.apps"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_248
    :goto_248
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10c

    :cond_257
    const-string v5, "com.android.browser"

    invoke-static {p0, v5}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_248

    const-string v5, "com.android.browser"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_248
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v7, 0x1080041

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/baidu/android/pushservice/PushService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.baidu.pushservice.action.publicmsg.CLICK_V2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "public_msg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/baidu/android/pushservice/PushService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.baidu.pushservice.action.publicmsg.DELETE_V2"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "public_msg"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-class v3, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-class v3, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_b7

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/android/pushservice/util/q;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_b6
    return-void

    :cond_b7
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput v7, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    iget-object v5, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, p0, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v2, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v3, Landroid/app/Notification;->flags:I

    invoke-static {p2}, Lcom/baidu/android/pushservice/util/q;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_b6
.end method

.method private static a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 12

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/g/d;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/g/d;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/baidu/android/pushservice/g/d;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.baidu.android.pushservice.action.lightapp.notification.CLICK"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "url"

    iget-object v2, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appid"

    iget-object v2, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "msgid"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p3, p4}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "host"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.lightapp.notification.DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appid"

    iget-object v3, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "msgid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v2, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {}, Lcom/baidu/android/pushservice/d;->a()Lcom/baidu/android/pushservice/d;

    move-result-object v0

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/d;->b(I)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/d;->c(I)V

    iget-object v4, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/d;->a(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/d;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/android/pushservice/g/d;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/g/d;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/baidu/android/pushservice/g/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/d;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/q;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/d;->a(Z)V

    move-object v1, p0

    move-object v4, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/android/pushservice/d;->a(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/baidu/android/pushservice/message/PublicMsg;Z)V

    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    if-nez p5, :cond_c1

    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mMsgId:Ljava/lang/String;

    :cond_c1
    invoke-static {}, Lcom/baidu/android/pushservice/d/a;->a()Lcom/baidu/android/pushservice/d/a;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mMsgId:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/android/pushservice/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;I[B[B)V
    .registers 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "public_msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "notify_type"

    const-string v2, "private"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pushService_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service_name"

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "baidu_message_body"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "baidu_message_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "baidu_message_secur_info"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.notification.SHOW"

    iget-object v2, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.METHOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    const-string v2, "com.baidu.android.pushservice.action.UNBINDAPP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/p;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "NotificationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbind exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;I[B[B)V
    .registers 11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "public_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "notify_type"

    const-string v2, "rich_media"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pushService_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "baidu_message_body"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "baidu_message_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "baidu_message_secur_info"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "service_name"

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NotificationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "richMedia Intent content\uff1a public_msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "notify_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rich_media"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "message_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pushService_package_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "service_name=com.baidu.android.pushservice.PushService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pMsg.mPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.baidu.android.pushservice.action.notification.SHOW"

    iget-object v2, p2, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Lcom/baidu/android/pushservice/i/n;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/n;-><init>()V

    iput-object p3, v0, Lcom/baidu/android/pushservice/i/n;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/baidu/android/pushservice/i/n;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/n;->g:J

    invoke-static {p0}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/n;->h:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/pushservice/message/a/m;->f:Lcom/baidu/android/pushservice/message/a/m;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/a/m;->a()I

    move-result v1

    iput v1, v0, Lcom/baidu/android/pushservice/i/n;->c:I

    iput-object p2, v0, Lcom/baidu/android/pushservice/i/n;->j:Ljava/lang/String;

    if-eqz p4, :cond_23

    iput-object p4, v0, Lcom/baidu/android/pushservice/i/n;->d:Ljava/lang/String;

    :cond_23
    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/n;)J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Lcom/baidu/android/pushservice/f;

    invoke-direct {v2, p3}, Lcom/baidu/android/pushservice/f;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/baidu/android/pushservice/f;->b(I)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/baidu/android/pushservice/f;->c(I)V

    invoke-virtual {v2, p1}, Lcom/baidu/android/pushservice/f;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/baidu/android/pushservice/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/f;->a(Z)V

    invoke-virtual {v2, p0, v1, p5}, Lcom/baidu/android/pushservice/f;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mNetType:I

    if-ne v0, v1, :cond_48

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/j;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_9b

    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    move v0, v1

    :goto_45
    if-nez v0, :cond_48

    :cond_47
    :goto_47
    return v2

    :cond_48
    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mSupportAppname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "NotificationHandler"

    const-string v2, ">>> isNeedShowNotification supportapp = null"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_47

    :cond_59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_5d
    iget-object v3, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mSupportAppname:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_99

    const-string v0, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> isNeedShowNotification supportapp found \r\n pckname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mSupportAppname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_80} :catch_8f

    move v0, v1

    :goto_81
    iget-boolean v3, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mIsSupportApp:Z

    if-eqz v3, :cond_87

    if-nez v0, :cond_8d

    :cond_87
    iget-boolean v3, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mIsSupportApp:Z

    if-nez v3, :cond_47

    if-nez v0, :cond_47

    :cond_8d
    move v2, v1

    goto :goto_47

    :catch_8f
    move-exception v0

    const-string v3, "NotificationHandler"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    move v0, v2

    goto :goto_81

    :cond_9b
    move v0, v2

    goto :goto_45
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msgid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lightapp notify delete appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "010202"

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;)V
    .registers 10

    const/high16 v3, 0x10000000

    const/4 v6, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "com.baidu.searchbox"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "com.baidu.searchbox.action.VIEW"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.searchbox"

    const-string v1, "com.baidu.searchbox.MainActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.searchbox.action.VIEW"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "EXTRA_URL_NEW_WINDOW"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_38
    const-string v0, ""

    iget-object v1, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mCustomContent:Ljava/lang/String;

    if-eqz v1, :cond_4b

    :try_start_3e
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mCustomContent:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "iconUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_9d

    move-result-object v0

    :cond_4b
    :goto_4b
    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Lcom/baidu/android/pushservice/f;

    invoke-direct {v3, v0}, Lcom/baidu/android/pushservice/f;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/f;->b(I)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/f;->c(I)V

    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/f;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/f;->a(I)V

    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/f;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/baidu/android/pushservice/f;->a(Z)V

    invoke-virtual {v3, p0, v1, p2}, Lcom/baidu/android/pushservice/f;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void

    :cond_7f
    const-string v0, "com.baidu.browser.apps"

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/q;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.baidu.browser.apps"

    const-string v1, "com.baidu.browser.framework.BdBrowserActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_38

    :cond_94
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_38

    :catch_9d
    move-exception v1

    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p1, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Lcom/baidu/android/pushservice/message/a/g;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/baidu/android/pushservice/g/d;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/g/d;->a()Z

    move-result v2

    if-nez v2, :cond_c

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v1, p1, p2}, Lcom/baidu/android/pushservice/g/d;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a

    invoke-virtual {v1, v2}, Lcom/baidu/android/pushservice/g/d;->a(Ljava/util/ArrayList;)V

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    goto :goto_b
.end method
