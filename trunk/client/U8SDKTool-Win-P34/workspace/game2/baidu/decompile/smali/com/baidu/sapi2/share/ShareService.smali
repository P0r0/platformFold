.class public final Lcom/baidu/sapi2/share/ShareService;
.super Landroid/app/Service;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/share/ShareService$1;,
        Lcom/baidu/sapi2/share/ShareService$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private static c:Lcom/baidu/sapi2/b;

.field private static d:Z


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/sapi2/share/ShareService;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/share/ShareService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/share/ShareService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareService;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/sapi2/share/ShareService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/share/ShareService;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareService;->e:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a()Z
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/baidu/sapi2/share/ShareService;->d:Z

    return v0
.end method

.method static synthetic b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/sapi2/share/ShareService;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method static synthetic c()Landroid/content/Context;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 140
    :try_start_0
    sput-object p1, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    .line 141
    invoke-static {p1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    sput-object v1, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/b;

    .line 142
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v1

    sput-object v1, Lcom/baidu/sapi2/share/ShareService;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 143
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/sapi2/share/ShareService;->d:Z
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 147
    :goto_19
    return-void

    .line 144
    :catch_1a
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/sapi2/share/ShareService;->d:Z

    goto :goto_19
.end method

.method a(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "replay"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v6, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v7, Lcom/baidu/sapi2/share/ShareEvent;->SYNC_ACK:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-direct {v6, v7}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    .line 156
    .local v6, "model":Lcom/baidu/sapi2/share/ShareModel;
    sget-object v7, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/b;

    invoke-virtual {v7}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    .line 157
    .local v2, "currentAccount":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {v6, v2}, Lcom/baidu/sapi2/share/ShareModel;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 158
    sget-object v7, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/b;

    invoke-virtual {v7}, Lcom/baidu/sapi2/b;->f()Ljava/util/List;

    move-result-object v5

    .line 159
    .local v5, "loginAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    if-eqz v2, :cond_79

    .line 160
    sget-object v7, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 161
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_40

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 162
    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-interface {v5, v9, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_40
    :goto_40
    invoke-virtual {v6}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-virtual {v6}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/b;

    invoke-virtual {v8}, Lcom/baidu/sapi2/b;->e()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v4, "incompleteAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-virtual {v6}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_61
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 174
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccount;->getAccountType()Lcom/baidu/sapi2/utils/enums/AccountType;

    move-result-object v7

    sget-object v8, Lcom/baidu/sapi2/utils/enums/AccountType;->INCOMPLETE_USER:Lcom/baidu/sapi2/utils/enums/AccountType;

    if-ne v7, v8, :cond_61

    .line 175
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 166
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "incompleteAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    :cond_79
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_40

    .line 178
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "incompleteAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    :cond_7d
    invoke-virtual {v6}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 180
    invoke-virtual {v6}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 181
    .restart local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    sget-object v7, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    goto :goto_8c

    .line 184
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_a1
    sget-object v7, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    sget-object v8, Lcom/baidu/sapi2/share/ShareService;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-static {v7, v8, v6}, Lcom/baidu/sapi2/share/c;->b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    .line 185
    const-string v7, "LOGIN_SHARE_MODEL"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    sget-object v7, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/b;

    invoke-virtual {v7}, Lcom/baidu/sapi2/b;->o()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_ca

    .line 187
    const-string v7, "RELOGIN_CREDENTIALS"

    sget-object v8, Lcom/baidu/sapi2/share/ShareService;->a:Landroid/content/Context;

    sget-object v9, Lcom/baidu/sapi2/share/ShareService;->c:Lcom/baidu/sapi2/b;

    invoke-virtual {v9}, Lcom/baidu/sapi2/b;->o()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/sapi2/share/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_ca
    const-string v7, "RUNTIME_ENVIRONMENT"

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 192
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    new-instance v0, Lcom/baidu/sapi2/share/ShareService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/share/ShareService$a;-><init>(Lcom/baidu/sapi2/share/ShareService;Lcom/baidu/sapi2/share/ShareService$1;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareService;->e:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/baidu/sapi2/share/ShareService;->stopSelf()V

    .line 56
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/baidu/sapi2/share/ShareService;->stopSelf()V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
