.class public Lcom/baidu/android/pushservice/e/e;
.super Lcom/baidu/android/pushservice/e/d;


# instance fields
.field protected e:Z


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e/d;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/e/e;->e:Z

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v7, 0x0

    const/16 v6, 0x20

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "response_params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "channel_id"

    iget-object v5, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/al;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iput-object v2, v1, Lcom/baidu/android/pushservice/e/m;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iput-object v3, v1, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_34} :catch_26a

    move-result-object v1

    :try_start_35
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v4, "method_deal_webapp_bind_intent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/l;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/l;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v4, v4, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/c/l;->c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/k;

    if-eqz v0, :cond_220

    invoke-virtual {v0, v3}, Lcom/baidu/android/pushservice/c/k;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/c/l;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/l;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/android/pushservice/e/e;->e:Z

    invoke-virtual {v2, v0, v3}, Lcom/baidu/android/pushservice/c/l;->a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "r_sync_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "r_sync_from"

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8d
    :goto_8d
    return-object v1

    :cond_8e
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v4, "method_deal_lapp_bind_intent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d2

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/g;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/g;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v4, v4, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/c/g;->c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/f;

    if-eqz v0, :cond_220

    invoke-virtual {v0, v3}, Lcom/baidu/android/pushservice/c/f;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/c/g;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/g;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/android/pushservice/e/e;->e:Z

    invoke-virtual {v2, v0, v3}, Lcom/baidu/android/pushservice/c/g;->a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "r_sync_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "r_sync_from"

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_e6} :catch_e7

    goto :goto_8d

    :catch_e7
    move-exception v0

    :goto_e8
    :try_start_e8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "request_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_131

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v2, "method_lapp_unbind"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_131

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/g;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/g;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/c/g;->c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/f;

    if-eqz v0, :cond_131

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/c/g;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/g;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/baidu/android/pushservice/c/g;->a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;
    :try_end_12b
    .catch Lorg/json/JSONException; {:try_start_e8 .. :try_end_12b} :catch_12d

    goto/16 :goto_8d

    :catch_12d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_131
    const-string v0, "BaseRegisterProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Appid or user_id not found @: \r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_149
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15f

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->b:Ljava/lang/String;

    const-string v2, "internal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    :cond_15f
    new-instance v0, Lcom/baidu/android/pushservice/c/h;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/c/h;-><init>()V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/c/h;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/c/h;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e/m;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "r_sync_type"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v3

    iget-boolean v4, p0, Lcom/baidu/android/pushservice/e/e;->e:Z

    invoke-virtual {v3, v0, v4}, Lcom/baidu/android/pushservice/c/b;->a(Lcom/baidu/android/pushservice/c/h;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "r_sync_rdata_v2"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "r_sync_from"

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x220

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    const-string v5, "com.baidu.android.pushservice.action.BIND_SYNC"

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2, v5, v0}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ba

    :cond_1d2
    :try_start_1d2
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v4, "method_sdk_bind"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/j;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/e;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v4, v4, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/c/j;->c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/i;

    if-eqz v0, :cond_220

    invoke-virtual {v0, v3}, Lcom/baidu/android/pushservice/c/i;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/c/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/c/j;->a(Lcom/baidu/android/pushservice/c/i;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.BIND_SYNC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "r_sync_type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "r_sync_sdk_from"

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/e;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8d

    :cond_220
    const-string v0, "BaseRegisterProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegisterThread userId :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseRegisterProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegisterThread appId :  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseRegisterProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisterThread content :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_268
    .catch Lorg/json/JSONException; {:try_start_1d2 .. :try_end_268} :catch_e7

    goto/16 :goto_149

    :catch_26a
    move-exception v0

    move-object v1, p1

    goto/16 :goto_e8
.end method
