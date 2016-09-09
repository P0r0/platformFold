.class Lcom/baidu/sapi2/share/ShareService$a;
.super Landroid/os/Binder;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/share/ShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/share/ShareService;


# direct methods
.method private constructor <init>(Lcom/baidu/sapi2/share/ShareService;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/sapi2/share/ShareService;Lcom/baidu/sapi2/share/ShareService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/baidu/sapi2/share/ShareService;
    .param p2, "x1"    # Lcom/baidu/sapi2/share/ShareService$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/share/ShareService$a;-><init>(Lcom/baidu/sapi2/share/ShareService;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 71
    iget-object v5, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-static {v5}, Lcom/baidu/sapi2/share/c;->b(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 72
    const/4 v4, 0x0

    .line 129
    :cond_a
    :goto_a
    return v4

    .line 74
    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    move-result-object v5

    if-eqz v5, :cond_35

    .line 75
    iget-object v5, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-static {v5}, Lcom/baidu/sapi2/share/ShareService;->a(Lcom/baidu/sapi2/share/ShareService;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_27

    .line 76
    iget-object v5, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v5, v6}, Lcom/baidu/sapi2/share/ShareService;->a(Lcom/baidu/sapi2/share/ShareService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 78
    :cond_27
    iget-object v5, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-static {v5}, Lcom/baidu/sapi2/share/ShareService;->a(Lcom/baidu/sapi2/share/ShareService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/baidu/sapi2/share/ShareService$a$1;

    invoke-direct {v6, p0}, Lcom/baidu/sapi2/share/ShareService$a$1;-><init>(Lcom/baidu/sapi2/share/ShareService$a;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_35
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->a()Z

    move-result v5

    if-nez v5, :cond_42

    .line 88
    iget-object v5, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    iget-object v6, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/share/ShareService;->a(Landroid/content/Context;)V

    .line 90
    :cond_42
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v5

    sget-object v6, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-eq v5, v6, :cond_a

    .line 94
    :try_start_50
    const-class v5, Lcom/baidu/sapi2/share/ShareModel;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "LOGIN_SHARE_MODEL"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/baidu/sapi2/share/ShareModel;

    .line 96
    .local v3, "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    if-eqz v3, :cond_a

    .line 104
    const-string v5, "RUNTIME_ENVIRONMENT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    if-eqz v5, :cond_8a

    const-string v5, "RUNTIME_ENVIRONMENT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    instance-of v5, v5, Lcom/baidu/sapi2/utils/enums/Domain;

    if-eqz v5, :cond_8a

    .line 106
    const-string v5, "RUNTIME_ENVIRONMENT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/utils/enums/Domain;

    .line 107
    .local v2, "env":Lcom/baidu/sapi2/utils/enums/Domain;
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    if-ne v2, v5, :cond_a

    .line 112
    .end local v2    # "env":Lcom/baidu/sapi2/utils/enums/Domain;
    :cond_8a
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->c()Landroid/content/Context;

    move-result-object v5

    const-string v6, "RELOGIN_CREDENTIALS"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sapi2/share/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    sget-object v5, Lcom/baidu/sapi2/share/ShareService$1;->a:[I

    invoke-virtual {v3}, Lcom/baidu/sapi2/share/ShareModel;->b()Lcom/baidu/sapi2/share/ShareEvent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/share/ShareEvent;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_cc

    goto/16 :goto_a

    .line 115
    :pswitch_a8
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->c()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_b3} :catch_b5

    goto/16 :goto_a

    .line 126
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :catch_b5
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 118
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "shareModel":Lcom/baidu/sapi2/share/ShareModel;
    :pswitch_bb
    :try_start_bb
    invoke-static {}, Lcom/baidu/sapi2/share/ShareService;->c()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;Lcom/baidu/sapi2/share/ShareModel;)V

    goto/16 :goto_a

    .line 121
    :pswitch_c4
    iget-object v5, p0, Lcom/baidu/sapi2/share/ShareService$a;->a:Lcom/baidu/sapi2/share/ShareService;

    invoke-virtual {v5, p3}, Lcom/baidu/sapi2/share/ShareService;->a(Landroid/os/Parcel;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c9} :catch_b5

    goto/16 :goto_a

    .line 113
    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_bb
        :pswitch_c4
    .end packed-switch
.end method
