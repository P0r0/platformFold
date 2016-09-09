.class Lcom/baidu/sapi2/SapiAccountManager$1;
.super Ljava/lang/Object;
.source "SapiAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiAccountManager;->init(Lcom/baidu/sapi2/SapiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiConfiguration;

.field final synthetic b:Lcom/baidu/sapi2/SapiAccountManager;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiAccountManager;Lcom/baidu/sapi2/SapiConfiguration;)V
    .registers 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->b:Lcom/baidu/sapi2/SapiAccountManager;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 112
    .local v0, "curVersionCode":I
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->silentShareOnUpgrade:Z

    if-eqz v1, :cond_23

    .line 113
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->t()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 114
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->resetSilentShareStatus(Landroid/content/Context;)V

    .line 117
    :cond_23
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/b;->a(I)V

    .line 119
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-static {}, Lcom/baidu/sapi2/utils/SapiUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/baidu/sapi2/share/a;->b()V

    .line 122
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->syncCacheOnInit:Z

    if-eqz v1, :cond_52

    .line 123
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiCache;->init(Landroid/content/Context;)V

    .line 126
    :cond_52
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 127
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->b()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->deviceLoginCheck()V

    .line 129
    :cond_63
    invoke-static {}, Lcom/baidu/sapi2/utils/StatService;->a()V

    .line 130
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/d;->a(Landroid/content/Context;)V

    .line 131
    return-void
.end method
