.class public final Lcom/baidu/sapi2/b;
.super Ljava/lang/Object;
.source "SapiContext.java"


# static fields
.field private static final a:Ljava/lang/String; = "app_version_code"

.field private static final b:Ljava/lang/String; = "current_account"

.field private static final c:Ljava/lang/String; = "share_accounts"

.field private static final d:Ljava/lang/String; = "login_accounts"

.field private static final e:Ljava/lang/String; = "first_install"

.field private static final f:Ljava/lang/String; = "login_status_changed"

.field private static final g:Ljava/lang/String; = "sapi_options"

.field private static final h:Ljava/lang/String; = "relogin_credentials"

.field private static final i:Ljava/lang/String; = "cuidtoken"

.field private static final j:Ljava/lang/String; = "device_token"

.field private static final k:Ljava/lang/String; = "device_login_available"

.field private static final l:Ljava/lang/String; = "hosts_hijacked"

.field private static final m:Ljava/lang/String; = "stat_items"

.field private static final n:Ljava/lang/String; = "time_offset_seconds"

.field private static final o:Ljava/lang/String; = "device_info_read_times"

.field private static final p:Ljava/lang/String; = "root_status"

.field private static s:Lcom/baidu/sapi2/b;


# instance fields
.field private q:Landroid/content/SharedPreferences;

.field private r:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/baidu/sapi2/b;->r:Landroid/content/Context;

    .line 81
    const-string v0, "sapi_system"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/sapi2/b;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-class v1, Lcom/baidu/sapi2/b;

    monitor-enter v1

    .line 72
    :try_start_3
    sget-object v0, Lcom/baidu/sapi2/b;->s:Lcom/baidu/sapi2/b;

    if-nez v0, :cond_12

    .line 73
    new-instance v0, Lcom/baidu/sapi2/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/sapi2/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/b;->s:Lcom/baidu/sapi2/b;

    .line 75
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 76
    sget-object v0, Lcom/baidu/sapi2/b;->s:Lcom/baidu/sapi2/b;

    return-object v0

    .line 75
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    .line 94
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    :goto_13
    return-void

    .line 96
    :cond_14
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    .line 102
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    :goto_13
    return-void

    .line 104
    :cond_14
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    .line 86
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    :goto_13
    return-void

    .line 88
    :cond_14
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    .line 110
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :goto_13
    return-void

    .line 112
    :cond_14
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-static {p1}, Lcom/baidu/sapi2/SapiAccount;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 354
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_f

    .line 355
    const-string v1, "share_accounts"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_f
    return-void
.end method

.method private b(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-static {p1}, Lcom/baidu/sapi2/SapiAccount;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 362
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_f

    .line 363
    const-string v1, "login_accounts"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_f
    return-void
.end method

.method private b(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .registers 3

    .prologue
    .line 344
    const-string v0, "login_status_changed"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Z)V

    .line 345
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    const-string v0, "device_token"

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .end local p1    # "elements":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_17
    return-object p1
.end method

.method public a(I)V
    .registers 3
    .param p1, "versionCode"    # I

    .prologue
    .line 545
    const-string v0, "app_version_code"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;I)V

    .line 546
    return-void
.end method

.method public a(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 5
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 163
    if-nez p1, :cond_f

    .line 164
    const-string v1, "current_account"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/baidu/sapi2/b;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogout(Landroid/content/Context;)Z

    .line 178
    :cond_e
    :goto_e
    return-void

    .line 169
    :cond_f
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiAccount;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_e

    .line 171
    const-string v1, "current_account"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/baidu/sapi2/b;->r:Landroid/content/Context;

    iget-object v2, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/sapi2/utils/SapiUtils;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 174
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->h()Z

    move-result v1

    if-nez v1, :cond_e

    .line 175
    invoke-direct {p0}, Lcom/baidu/sapi2/b;->w()V

    goto :goto_e
.end method

.method public a(Lcom/baidu/sapi2/c;)V
    .registers 4
    .param p1, "options"    # Lcom/baidu/sapi2/c;

    .prologue
    .line 381
    if-eqz p1, :cond_b

    .line 382
    const-string v0, "sapi_options"

    invoke-virtual {p1}, Lcom/baidu/sapi2/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "device_token"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    .registers 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "credentials"    # Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    .prologue
    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    if-eqz p2, :cond_28

    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 427
    :cond_28
    :goto_28
    return-void

    .line 416
    :cond_29
    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/b;->c(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->o()Lorg/json/JSONObject;

    move-result-object v1

    .line 418
    .local v1, "obj":Lorg/json/JSONObject;
    if-nez v1, :cond_39

    .line 419
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "obj":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 422
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :cond_39
    :try_start_39
    invoke-virtual {p2}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v2, "relogin_credentials"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_49} :catch_4a

    goto :goto_28

    .line 424
    :catch_4a
    move-exception v0

    .line 425
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 466
    if-nez p2, :cond_c

    .line 467
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 470
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->q()Ljava/util/Map;

    move-result-object v3

    .line 471
    .local v3, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 473
    .local v4, "obj":Lorg/json/JSONObject;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 474
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_40} :catch_41

    goto :goto_20

    .line 477
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_41
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 481
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_45
    :goto_45
    return-void

    .line 476
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_46
    :try_start_46
    const-string v5, "stat_items"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4f} :catch_41

    goto :goto_45
.end method

.method public a(Z)V
    .registers 3
    .param p1, "supportDeviceLogin"    # Z

    .prologue
    .line 145
    const-string v0, "device_login_available"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .registers 6
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->o()Lorg/json/JSONObject;

    move-result-object v1

    .line 432
    .local v1, "credentialsJSON":Lorg/json/JSONObject;
    if-eqz v1, :cond_17

    .line 433
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 434
    .local v2, "obj":Lorg/json/JSONObject;
    if-eqz v2, :cond_17

    .line 435
    invoke-static {v2}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    move-result-object v0

    .line 436
    .local v0, "credentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->p()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    .line 440
    .end local v0    # "credentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    goto :goto_16
.end method

.method public b(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 4
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 204
    if-nez p1, :cond_3

    .line 216
    :goto_2
    return-void

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->e()Ljava/util/List;

    move-result-object v0

    .line 209
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 210
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_10
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/b;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/b;->a(Ljava/util/List;)V

    goto :goto_2

    .line 212
    :cond_19
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public b(Z)V
    .registers 3
    .param p1, "hostsHijacked"    # Z

    .prologue
    .line 153
    const-string v0, "hosts_hijacked"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 141
    const-string v0, "device_login_available"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 4
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 225
    if-nez p1, :cond_3

    .line 236
    :goto_2
    return-void

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->f()Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 231
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :goto_10
    invoke-direct {p0, v0}, Lcom/baidu/sapi2/b;->b(Ljava/util/List;)V

    goto :goto_2

    .line 233
    :cond_14
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method c(Ljava/lang/String;)V
    .registers 3
    .param p1, "ubi"    # Ljava/lang/String;

    .prologue
    .line 456
    const-string v0, "cuidtoken"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 149
    const-string v0, "hosts_hijacked"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/baidu/sapi2/SapiAccount;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 187
    const-string v2, "current_account"

    invoke-direct {p0, v2}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 189
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "current_account"

    invoke-direct {p0, v3}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/baidu/sapi2/SapiAccount;->fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1b} :catch_1d

    move-result-object v1

    .line 194
    :cond_1c
    :goto_1c
    return-object v1

    .line 190
    :catch_1d
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1c
.end method

.method public d(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 4
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 245
    if-nez p1, :cond_3

    .line 254
    :cond_2
    :goto_2
    return-void

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->e()Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    invoke-direct {p0, v0}, Lcom/baidu/sapi2/b;->a(Ljava/util/List;)V

    goto :goto_2
.end method

.method public d(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 487
    :try_start_6
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->q()Ljava/util/Map;

    move-result-object v1

    .line 488
    .local v1, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 489
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_13
    const-string v2, "stat_items"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_21} :catch_22

    .line 496
    .end local v1    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_21
    :goto_21
    return-void

    .line 492
    :catch_22
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public e()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    const-string v1, "share_accounts"

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 298
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "share_accounts"

    invoke-direct {p0, v2}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/sapi2/SapiAccount;->fromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/baidu/sapi2/b;->a(Ljava/util/List;I)Ljava/util/List;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1f} :catch_21

    move-result-object v1

    .line 304
    :goto_20
    return-object v1

    .line 300
    :catch_21
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_20

    .line 304
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_20
.end method

.method public e(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 7
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 263
    if-nez p1, :cond_3

    .line 287
    :cond_2
    :goto_2
    return-void

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    .line 269
    .local v2, "session":Lcom/baidu/sapi2/SapiAccount;
    if-eqz v2, :cond_33

    iget-object v3, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v4, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 271
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/baidu/sapi2/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 272
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/baidu/sapi2/share/a;->b(Lcom/baidu/sapi2/SapiAccount;)V

    .line 273
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getGlobalAuthorizationListener()Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 275
    :try_start_2c
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getGlobalAuthorizationListener()Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;->onLogoutSuccess(Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_33} :catch_44

    .line 282
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->f()Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    invoke-direct {p0, v0}, Lcom/baidu/sapi2/b;->b(Ljava/util/List;)V

    goto :goto_2

    .line 276
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    :catch_44
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_33
.end method

.method public e(Ljava/lang/String;)V
    .registers 3
    .param p1, "isRoot"    # Ljava/lang/String;

    .prologue
    .line 556
    const-string v0, "root_status"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public f()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const-string v1, "login_accounts"

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 316
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "login_accounts"

    invoke-direct {p0, v2}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/sapi2/SapiAccount;->fromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1c

    move-result-object v1

    .line 321
    :goto_1b
    return-object v1

    .line 317
    :catch_1c
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b
.end method

.method public g()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 331
    const-string v2, "first_install"

    invoke-direct {p0, v2, v0}, Lcom/baidu/sapi2/b;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 332
    const-string v2, "first_install"

    invoke-direct {p0, v2, v1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Z)V

    .line 335
    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 340
    const-string v0, "login_status_changed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()V
    .registers 3

    .prologue
    .line 348
    const-string v0, "login_status_changed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Z)V

    .line 349
    return-void
.end method

.method public j()Lcom/baidu/sapi2/c;
    .registers 3

    .prologue
    .line 369
    const-string v1, "sapi_options"

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "options":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 372
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/sapi2/c;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/c;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_14} :catch_16

    move-result-object v1

    .line 376
    :goto_15
    return-object v1

    .line 373
    :catch_16
    move-exception v1

    .line 376
    :cond_17
    new-instance v1, Lcom/baidu/sapi2/c;

    invoke-direct {v1}, Lcom/baidu/sapi2/c;-><init>()V

    goto :goto_15
.end method

.method public k()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public o()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 445
    const-string v1, "relogin_credentials"

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "credentials":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 448
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_12

    .line 452
    :goto_11
    return-object v1

    .line 449
    :catch_12
    move-exception v1

    .line 452
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 460
    const-string v0, "cuidtoken"

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 500
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 502
    .local v7, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v11, "stat_items"

    invoke-direct {p0, v11}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 503
    .local v9, "itemsJSON":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_59

    .line 505
    :try_start_11
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 506
    .local v10, "itemsObj":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 507
    .local v8, "itemsIterator":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_59

    .line 508
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 509
    .local v6, "itemName":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 510
    .local v3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 511
    .local v5, "extrasObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_5a

    .line 512
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 513
    .local v4, "extrasIterator":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5a

    .line 514
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 515
    .local v1, "extraName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "extraValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_35

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_35

    .line 517
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_54} :catch_55

    goto :goto_35

    .line 523
    .end local v1    # "extraName":Ljava/lang/String;
    .end local v2    # "extraValue":Ljava/lang/String;
    .end local v3    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "extrasIterator":Ljava/util/Iterator;
    .end local v5    # "extrasObj":Lorg/json/JSONObject;
    .end local v6    # "itemName":Ljava/lang/String;
    .end local v8    # "itemsIterator":Ljava/util/Iterator;
    .end local v10    # "itemsObj":Lorg/json/JSONObject;
    :catch_55
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 527
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_59
    return-object v7

    .line 521
    .restart local v3    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "extrasObj":Lorg/json/JSONObject;
    .restart local v6    # "itemName":Ljava/lang/String;
    .restart local v8    # "itemsIterator":Ljava/util/Iterator;
    .restart local v10    # "itemsObj":Lorg/json/JSONObject;
    :cond_5a
    :try_start_5a
    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_55

    goto :goto_1a
.end method

.method public r()I
    .registers 3

    .prologue
    .line 531
    const-string v0, "time_offset_seconds"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/b;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public s()J
    .registers 5

    .prologue
    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/baidu/sapi2/b;->r()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public t()I
    .registers 3

    .prologue
    .line 540
    const-string v0, "app_version_code"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/b;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public u()J
    .registers 7

    .prologue
    .line 550
    const-string v2, "device_info_read_times"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/baidu/sapi2/b;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 551
    .local v0, "usedTimes":J
    const-string v2, "device_info_read_times"

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;J)V

    .line 552
    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 560
    const-string v0, "root_status"

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
