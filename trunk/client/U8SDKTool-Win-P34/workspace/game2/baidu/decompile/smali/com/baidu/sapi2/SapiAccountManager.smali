.class public final Lcom/baidu/sapi2/SapiAccountManager;
.super Ljava/lang/Object;
.source "SapiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;,
        Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;,
        Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;
    }
.end annotation


# static fields
.field public static final SESSION_BDUSS:Ljava/lang/String; = "bduss"

.field public static final SESSION_DISPLAYNAME:Ljava/lang/String; = "displayname"

.field public static final SESSION_PTOKEN:Ljava/lang/String; = "ptoken"

.field public static final SESSION_STOKEN:Ljava/lang/String; = "stoken"

.field public static final SESSION_UID:Ljava/lang/String; = "uid"

.field public static final VERSION_CODE:I = 0x52

.field public static final VERSION_NAME:Ljava/lang/String; = "6.14.7"

.field private static a:Lcom/baidu/sapi2/SapiAccountManager;

.field private static b:Lcom/baidu/sapi2/SapiConfiguration;

.field private static c:Lcom/baidu/sapi2/SapiAccountService;

.field private static d:Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

.field private static e:Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

.field private static f:Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->g:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->g:Ljava/util/List;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "displayname"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bduss"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ptoken"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "stoken"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 413
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 414
    .local v4, "pid":I
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 415
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 416
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v4, :cond_14

    .line 417
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 423
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pid":I
    :goto_26
    return-object v5

    .line 420
    :catch_27
    move-exception v2

    .line 421
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 423
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2b
    const-string v5, ""

    goto :goto_26
.end method

.method static synthetic b()Lcom/baidu/sapi2/SapiAccountService;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/SapiAccountService;

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 434
    :goto_10
    return-object v1

    .line 431
    :catch_11
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 434
    const-string v1, ""

    goto :goto_10
.end method

.method static c(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    invoke-static {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "curProcessName":Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/sapi2/SapiAccountManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "appProcessName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public static getGlobalAuthorizationListener()Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;
    .registers 1

    .prologue
    .line 406
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->f:Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/sapi2/SapiAccountManager;
    .registers 2

    .prologue
    .line 85
    const-class v1, Lcom/baidu/sapi2/SapiAccountManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->a:Lcom/baidu/sapi2/SapiAccountManager;

    if-nez v0, :cond_e

    .line 86
    new-instance v0, Lcom/baidu/sapi2/SapiAccountManager;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccountManager;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->a:Lcom/baidu/sapi2/SapiAccountManager;

    .line 88
    :cond_e
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->a:Lcom/baidu/sapi2/SapiAccountManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;
    .registers 1

    .prologue
    .line 384
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->e:Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    return-object v0
.end method

.method public static getSilentShareListener()Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;
    .registers 1

    .prologue
    .line 362
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->d:Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    return-object v0
.end method

.method public static registerGlobalAuthorizationListener(Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;)V
    .registers 1
    .param p0, "listener"    # Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;

    .prologue
    .line 394
    sput-object p0, Lcom/baidu/sapi2/SapiAccountManager;->f:Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;

    .line 395
    return-void
.end method

.method public static registerReceiveShareListener(Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;)V
    .registers 1
    .param p0, "listener"    # Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    .prologue
    .line 372
    sput-object p0, Lcom/baidu/sapi2/SapiAccountManager;->e:Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    .line 373
    return-void
.end method

.method public static registerSilentShareListener(Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;)V
    .registers 1
    .param p0, "listener"    # Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    .prologue
    .line 351
    sput-object p0, Lcom/baidu/sapi2/SapiAccountManager;->d:Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    .line 352
    return-void
.end method

.method public static unregisterGlobalAuthorizationListener()V
    .registers 1

    .prologue
    .line 402
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->f:Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;

    .line 403
    return-void
.end method

.method public static unregisterReceiveShareListener()V
    .registers 1

    .prologue
    .line 380
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->e:Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    .line 381
    return-void
.end method

.method public static unregisterSilentShareListener()V
    .registers 1

    .prologue
    .line 358
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->d:Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    .line 359
    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    .prologue
    .line 310
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-nez v0, :cond_25

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " have not been initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_25
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getAccountService()Lcom/baidu/sapi2/SapiAccountService;
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 157
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/SapiAccountService;

    return-object v0
.end method

.method public getLoginAccounts()Ljava/util/List;
    .registers 2
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
    .line 297
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 298
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 147
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    return-object v0
.end method

.method public getSession()Lcom/baidu/sapi2/SapiAccount;
    .registers 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 232
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 196
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 197
    .local v0, "session":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiAccountManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_15

    if-nez v0, :cond_16

    .line 204
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_15
    :goto_15
    return-object p2

    .line 200
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_16
    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccount;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 201
    .local v1, "sessionData":Lorg/json/JSONObject;
    if-eqz v1, :cond_15

    .line 202
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_15
.end method

.method public getShareAccounts()Ljava/util/List;
    .registers 7
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
    .line 264
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, "validAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    sget-object v4, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v4

    sget-object v5, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v4, v5, :cond_13

    .line 278
    :goto_12
    return-object v3

    .line 269
    :cond_13
    sget-object v4, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->e()Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "shareAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 271
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 272
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 274
    :cond_39
    sget-object v4, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/b;->d(Lcom/baidu/sapi2/SapiAccount;)V

    goto :goto_23

    .line 277
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_45
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_12
.end method

.method public declared-synchronized init(Lcom/baidu/sapi2/SapiConfiguration;)V
    .registers 5
    .param p1, "configuration"    # Lcom/baidu/sapi2/SapiConfiguration;

    .prologue
    .line 100
    monitor-enter p0

    if-nez p1, :cond_27

    .line 101
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initialized failed: SapiConfiguration can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_24

    .line 100
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_27
    :try_start_27
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-nez v0, :cond_4d

    .line 105
    sput-object p1, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    .line 106
    new-instance v0, Lcom/baidu/sapi2/SapiAccountService;

    iget-object v1, p1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/sapi2/SapiAccountService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/SapiAccountService;

    .line 107
    iget-object v0, p1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiAccountManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/sapi2/SapiAccountManager$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/sapi2/SapiAccountManager$1;-><init>(Lcom/baidu/sapi2/SapiAccountManager;Lcom/baidu/sapi2/SapiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_24

    .line 137
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-void

    .line 135
    :cond_4d
    :try_start_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " had already been initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/baidu/sapi2/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_24

    goto :goto_4b
.end method

.method public isLogin()Z
    .registers 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 168
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public logout()V
    .registers 4

    .prologue
    .line 176
    const-string v0, "logout"

    const-string v1, "di"

    const-string v2, "sdk_api_logout"

    invoke-static {v2}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/utils/StatService;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiAccountManager;->removeLoginAccount(Lcom/baidu/sapi2/SapiAccount;)V

    .line 178
    return-void
.end method

.method public removeLoginAccount(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 3
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 288
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/b;->e(Lcom/baidu/sapi2/SapiAccount;)V

    .line 289
    return-void
.end method

.method public validate(Lcom/baidu/sapi2/SapiAccount;)Z
    .registers 3
    .param p1, "sapiAccount"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    .line 251
    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 252
    const/4 v0, 0x0

    .line 255
    :goto_a
    return v0

    .line 254
    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 255
    const/4 v0, 0x1

    goto :goto_a
.end method
