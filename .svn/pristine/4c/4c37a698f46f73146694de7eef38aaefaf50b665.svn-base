.class final Lcom/baidu/sapi2/share/c;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 206
    const-string v2, ""

    .line 207
    .local v2, "result":Ljava/lang/String;
    if-nez p0, :cond_6

    move-object v3, v2

    .line 218
    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :goto_5
    return-object v3

    .line 211
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 212
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 213
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 214
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/sapi2/share/c;->b([B)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_19} :catch_1c

    move-result-object v2

    .end local v1    # "md5":Ljava/security/MessageDigest;
    :goto_1a
    move-object v3, v2

    .line 218
    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_5

    .line 215
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_1c
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method static a(Landroid/content/Context;)Ljava/util/List;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v12, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v6, "orderServices":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/Intent;Ljava/lang/Integer;>;"
    invoke-static/range {p0 .. p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v15

    invoke-virtual {v15}, Lcom/baidu/sapi2/b;->n()Ljava/util/Map;

    move-result-object v5

    .line 55
    .local v5, "orderAuthorizedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p0, :cond_15

    .line 102
    :cond_14
    :goto_14
    return-object v12

    .line 59
    :cond_15
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    new-instance v16, Landroid/content/Intent;

    const-string v17, "baidu.intent.action.account.SHARE_SERVICE"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x20

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 62
    .local v14, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_14

    .line 63
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ce

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 64
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 65
    .local v11, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v11, :cond_2c

    .line 66
    new-instance v4, Landroid/content/Intent;

    const-string v15, "baidu.intent.action.account.SHARE_SERVICE"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, "intent":Landroid/content/Intent;
    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xb

    move/from16 v0, v16

    if-le v15, v0, :cond_5b

    .line 69
    const/16 v15, 0x20

    invoke-virtual {v4, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    :cond_5b
    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6d

    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_2c

    :cond_6d
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2c

    .line 77
    const v13, 0x7fffffff

    .line 78
    .local v13, "serviceWeight":I
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9a
    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 79
    .local v8, "packageNamePattern":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9a

    .line 80
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_9a

    .line 83
    .end local v8    # "packageNamePattern":Ljava/lang/String;
    :cond_bf
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_c6} :catch_c8

    goto/16 :goto_2c

    .line 99
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v13    # "serviceWeight":I
    .end local v14    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_c8
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 87
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v14    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_ce
    :try_start_ce
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .local v7, "orderServicesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Landroid/content/Intent;Ljava/lang/Integer;>;>;"
    new-instance v15, Lcom/baidu/sapi2/share/c$1;

    invoke-direct {v15}, Lcom/baidu/sapi2/share/c$1;-><init>()V

    invoke-static {v7, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 96
    .local v10, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Intent;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_f6} :catch_c8

    goto :goto_e3
.end method

.method static a(Landroid/content/Context;Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 319
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 331
    :cond_4
    :goto_4
    return-void

    .line 322
    :cond_5
    invoke-virtual {p1, p0}, Lcom/baidu/sapi2/share/ShareModel;->b(Landroid/content/Context;)V

    .line 323
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    .line 324
    .local v1, "sapiContext":Lcom/baidu/sapi2/b;
    invoke-virtual {p1}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 325
    invoke-virtual {p1}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 326
    .local v0, "invalidateAccount":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 328
    :cond_35
    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/b;->d(Lcom/baidu/sapi2/SapiAccount;)V

    goto :goto_4
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strategy"    # Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .param p2, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 249
    const-class v6, Lcom/baidu/sapi2/share/c;

    monitor-enter v6

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    if-nez p2, :cond_b

    .line 291
    :cond_9
    :goto_9
    monitor-exit v6

    return-void

    .line 252
    :cond_b
    :try_start_b
    invoke-virtual {p2, p0}, Lcom/baidu/sapi2/share/ShareModel;->b(Landroid/content/Context;)V

    .line 253
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v3

    .line 254
    .local v3, "sapiContext":Lcom/baidu/sapi2/b;
    sget-object v5, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne p1, v5, :cond_9c

    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->h()Z

    move-result v5

    if-nez v5, :cond_9c

    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v5

    if-nez v5, :cond_9c

    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9c

    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sapi2/SapiAccount;

    invoke-static {v5}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 259
    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/sapi2/SapiAccount;

    .line 260
    .local v4, "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 261
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/b;->c(Lcom/baidu/sapi2/SapiAccount;)V

    .line 262
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/b;->d(Lcom/baidu/sapi2/SapiAccount;)V

    .line 263
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getSilentShareListener()Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 264
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/baidu/sapi2/share/c$2;

    invoke-direct {v7, v3}, Lcom/baidu/sapi2/share/c$2;-><init>(Lcom/baidu/sapi2/b;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    :cond_68
    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_70
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 275
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {p0, v0}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 276
    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/b;->b(Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_85
    .catchall {:try_start_b .. :try_end_85} :catchall_86

    goto :goto_70

    .line 249
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sapiContext":Lcom/baidu/sapi2/b;
    .end local v4    # "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    :catchall_86
    move-exception v5

    monitor-exit v6

    throw v5

    .line 280
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sapiContext":Lcom/baidu/sapi2/b;
    .restart local v4    # "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_89
    :try_start_89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "app"

    iget-object v7, v4, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v5, "silent_login_share"

    invoke-static {v5, v1}, Lcom/baidu/sapi2/utils/StatService;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_9

    .line 284
    .end local v1    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_9c
    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 285
    .restart local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {p0, v0}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 286
    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/b;->b(Lcom/baidu/sapi2/SapiAccount;)V

    .line 288
    :cond_b9
    invoke-static {p0, v0}, Lcom/baidu/sapi2/share/c;->b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_bc
    .catchall {:try_start_89 .. :try_end_bc} :catchall_86

    goto :goto_a4
.end method

.method static a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    const/4 v1, 0x0

    .line 301
    if-nez p0, :cond_4

    .line 305
    :cond_3
    :goto_3
    return v1

    .line 304
    :cond_4
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    .line 305
    .local v0, "sapiContext":Lcom/baidu/sapi2/b;
    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_22
    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calleePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 140
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 154
    :cond_9
    :goto_9
    return v4

    .line 143
    :cond_a
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/b;->k()Ljava/util/Map;

    move-result-object v0

    .line 145
    .local v0, "authorizedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/baidu/sapi2/share/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "calleePackageSign":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 147
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "packageNamePattern":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 150
    const/4 v4, 0x1

    goto :goto_9
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v2, ""

    .line 186
    .local v2, "packageSign":Ljava/lang/String;
    if-eqz p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_a
    move-object v3, v2

    .line 199
    .end local v2    # "packageSign":Ljava/lang/String;
    .local v3, "packageSign":Ljava/lang/String;
    :goto_b
    return-object v3

    .line 190
    .end local v3    # "packageSign":Ljava/lang/String;
    .restart local v2    # "packageSign":Ljava/lang/String;
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lez v5, :cond_28

    .line 193
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 194
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/sapi2/share/c;->a([B)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_27} :catch_2a

    move-result-object v2

    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "signature":Landroid/content/pm/Signature;
    :cond_28
    :goto_28
    move-object v3, v2

    .line 199
    .end local v2    # "packageSign":Ljava/lang/String;
    .restart local v3    # "packageSign":Ljava/lang/String;
    goto :goto_b

    .line 196
    .end local v3    # "packageSign":Ljava/lang/String;
    .restart local v2    # "packageSign":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method static b([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .prologue
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-nez p0, :cond_c

    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    :goto_b
    return-object v6

    .line 229
    :cond_c
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_2b

    aget-byte v1, v0, v3

    .line 230
    .local v1, "b":I
    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_25

    .line 232
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 236
    .end local v1    # "b":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b
.end method

.method static b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 341
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 363
    :cond_8
    return-void

    .line 344
    :cond_9
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v3

    .line 346
    .local v3, "sapiContext":Lcom/baidu/sapi2/b;
    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 347
    .local v0, "currentAccount":Lcom/baidu/sapi2/SapiAccount;
    if-eqz v0, :cond_24

    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v6, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 348
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 349
    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 351
    :cond_24
    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/SapiAccount;

    .line 352
    .local v2, "loginAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v6, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 353
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 354
    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/b;->c(Lcom/baidu/sapi2/SapiAccount;)V

    goto :goto_2c

    .line 357
    .end local v2    # "loginAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_4a
    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_52
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/sapi2/SapiAccount;

    .line 358
    .local v4, "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v6, v4, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 359
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 360
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/b;->b(Lcom/baidu/sapi2/SapiAccount;)V

    goto :goto_52
.end method

.method static b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strategy"    # Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .param p2, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 399
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 407
    :cond_6
    :goto_6
    return-void

    .line 402
    :cond_7
    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/sapi2/share/ShareModel;->a(Ljava/lang/String;)V

    .line 405
    :cond_18
    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/share/ShareModel;->a(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)V

    .line 406
    invoke-virtual {p2, p0}, Lcom/baidu/sapi2/share/ShareModel;->a(Landroid/content/Context;)V

    goto :goto_6
.end method

.method static b(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 113
    if-nez p0, :cond_4

    .line 128
    :cond_3
    :goto_3
    return v5

    .line 116
    :cond_4
    invoke-static {p0}, Lcom/baidu/sapi2/share/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "callerPackageName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "callerPackageSign":Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/b;->k()Ljava/util/Map;

    move-result-object v0

    .line 120
    .local v0, "authorizedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    .local v4, "packageNamePattern":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 124
    const/4 v5, 0x1

    goto :goto_3
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const-string v0, ""

    .line 164
    .local v0, "callerPackageName":Ljava/lang/String;
    if-nez p0, :cond_6

    move-object v1, v0

    .line 175
    .end local v0    # "callerPackageName":Ljava/lang/String;
    .local v1, "callerPackageName":Ljava/lang/String;
    :goto_5
    return-object v1

    .line 168
    .end local v1    # "callerPackageName":Ljava/lang/String;
    .restart local v0    # "callerPackageName":Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "packages":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_18

    .line 170
    const/4 v4, 0x0

    aget-object v0, v3, v4
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_18} :catch_1a

    .end local v3    # "packages":[Ljava/lang/String;
    :cond_18
    :goto_18
    move-object v1, v0

    .line 175
    .end local v0    # "callerPackageName":Ljava/lang/String;
    .restart local v1    # "callerPackageName":Ljava/lang/String;
    goto :goto_5

    .line 172
    .end local v1    # "callerPackageName":Ljava/lang/String;
    .restart local v0    # "callerPackageName":Ljava/lang/String;
    :catch_1a
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reloginCredentials"    # Ljava/lang/String;

    .prologue
    .line 373
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 387
    :cond_8
    :goto_8
    return-void

    .line 377
    :cond_9
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lcom/baidu/sapi2/share/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 378
    .local v2, "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 379
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 380
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    .local v3, "uid":Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_16

    .line 384
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "uid":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method
