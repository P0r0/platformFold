.class public final Lcom/baidu/sapi2/share/a;
.super Ljava/lang/Object;
.source "SapiShareClient.java"


# static fields
.field public static final a:I = 0x5

.field static final b:Ljava/lang/String; = "LOGIN_SHARE_MODEL"

.field static final c:Ljava/lang/String; = "RELOGIN_CREDENTIALS"

.field static final d:Ljava/lang/String; = "RUNTIME_ENVIRONMENT"

.field static final e:Ljava/lang/String; = "baidu.intent.action.account.SHARE_SERVICE"

.field private static f:Lcom/baidu/sapi2/SapiConfiguration;

.field private static g:Lcom/baidu/sapi2/b;

.field private static final h:Lcom/baidu/sapi2/share/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/baidu/sapi2/share/a;

    invoke-direct {v0}, Lcom/baidu/sapi2/share/a;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/share/a;->h:Lcom/baidu/sapi2/share/a;

    .line 54
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    .line 55
    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/baidu/sapi2/share/ShareModel;)Landroid/os/Parcel;
    .registers 6
    .param p0, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    .local v1, "data":Landroid/os/Parcel;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    sget-object v3, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/baidu/sapi2/share/c;->b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    .line 311
    const-string v2, "LOGIN_SHARE_MODEL"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    sget-object v2, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    invoke-virtual {v2}, Lcom/baidu/sapi2/b;->o()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 313
    const-string v2, "RELOGIN_CREDENTIALS"

    sget-object v3, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    sget-object v4, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->o()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_3a
    const-string v2, "RUNTIME_ENVIRONMENT"

    sget-object v3, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 317
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 319
    return-object v1
.end method

.method public static a()Lcom/baidu/sapi2/share/a;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/baidu/sapi2/share/a;->h:Lcom/baidu/sapi2/share/a;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Parcel;)V
    .registers 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/baidu/sapi2/share/a;->b(Landroid/os/Parcel;)V

    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 218
    sget-object v0, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->g()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 219
    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-eq v0, v1, :cond_15

    .line 220
    invoke-static {}, Lcom/baidu/sapi2/share/a;->f()V

    .line 228
    :cond_15
    :goto_15
    return-void

    .line 223
    :cond_16
    sget-object v0, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->h()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v0, v1, :cond_15

    .line 225
    invoke-static {}, Lcom/baidu/sapi2/share/a;->f()V

    goto :goto_15
.end method

.method private static b(Landroid/os/Parcel;)V
    .registers 6
    .param p0, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 292
    if-nez p0, :cond_3

    .line 304
    :goto_2
    return-void

    .line 296
    :cond_3
    :try_start_3
    const-class v3, Lcom/baidu/sapi2/share/ShareModel;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 297
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "LOGIN_SHARE_MODEL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/share/ShareModel;

    .line 299
    .local v2, "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    sget-object v3, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    const-string v4, "RELOGIN_CREDENTIALS"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sapi2/share/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    sget-object v3, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    sget-object v4, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2f} :catch_30

    goto :goto_2

    .line 301
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :catch_30
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static c()Z
    .registers 2

    .prologue
    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.baidu.input_huawei"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v1, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static synthetic d()Lcom/baidu/sapi2/SapiConfiguration;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    return-object v0
.end method

.method static synthetic e()Lcom/baidu/sapi2/b;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    return-object v0
.end method

.method private static f()V
    .registers 4

    .prologue
    .line 232
    invoke-static {}, Lcom/baidu/sapi2/share/a;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 288
    .local v0, "handler":Landroid/os/Handler;
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    .local v2, "shareServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :goto_6
    return-void

    .line 235
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    .end local v2    # "shareServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_7
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "SyncThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    .restart local v0    # "handler":Landroid/os/Handler;
    sget-object v3, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 239
    .restart local v2    # "shareServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v3, Lcom/baidu/sapi2/share/a$3;

    invoke-direct {v3, v2, v0, v1}, Lcom/baidu/sapi2/share/a$3;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/os/HandlerThread;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 8
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 142
    :cond_6
    :goto_6
    return-void

    .line 75
    :cond_7
    iget-object v0, p1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 76
    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 78
    :cond_19
    sget-object v0, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 79
    sget-object v0, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/b;->c(Lcom/baidu/sapi2/SapiAccount;)V

    .line 80
    sget-object v0, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/b;->d(Lcom/baidu/sapi2/SapiAccount;)V

    .line 81
    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiAccount;->getAccountType()Lcom/baidu/sapi2/utils/enums/AccountType;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/AccountType;->INCOMPLETE_USER:Lcom/baidu/sapi2/utils/enums/AccountType;

    if-eq v0, v1, :cond_6

    .line 86
    invoke-static {}, Lcom/baidu/sapi2/share/a;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 89
    new-instance v5, Landroid/os/HandlerThread;

    const-string v0, "ValidateThread"

    invoke-direct {v5, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    .local v5, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    .local v3, "handler":Landroid/os/Handler;
    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "shareServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Lcom/baidu/sapi2/share/a$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/share/a$1;-><init>(Lcom/baidu/sapi2/share/a;Ljava/util/List;Landroid/os/Handler;Lcom/baidu/sapi2/SapiAccount;Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public b(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 8
    .param p1, "currentAccount"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 149
    if-eqz p1, :cond_c

    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v0, v1, :cond_d

    .line 211
    :cond_c
    :goto_c
    return-void

    .line 153
    :cond_d
    sget-object v0, Lcom/baidu/sapi2/share/a;->g:Lcom/baidu/sapi2/b;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/b;->d(Lcom/baidu/sapi2/SapiAccount;)V

    .line 155
    invoke-static {}, Lcom/baidu/sapi2/share/a;->c()Z

    move-result v0

    if-nez v0, :cond_c

    .line 158
    new-instance v5, Landroid/os/HandlerThread;

    const-string v0, "InvalidateThread"

    invoke-direct {v5, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 159
    .local v5, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    .local v3, "handler":Landroid/os/Handler;
    sget-object v0, Lcom/baidu/sapi2/share/a;->f:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "shareServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Lcom/baidu/sapi2/share/a$2;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/share/a$2;-><init>(Lcom/baidu/sapi2/share/a;Ljava/util/List;Landroid/os/Handler;Lcom/baidu/sapi2/SapiAccount;Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method
