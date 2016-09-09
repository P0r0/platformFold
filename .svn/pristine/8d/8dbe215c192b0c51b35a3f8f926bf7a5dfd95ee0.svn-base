.class final Lcom/baidu/bdgame/sdk/obf/z$2;
.super Lcom/baidu/bdgame/sdk/obf/bx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/z;->a(Lcom/baidu/bdgame/sdk/obf/ax;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ax;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/z;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/z;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/z$2;->c:Lcom/baidu/bdgame/sdk/obf/z;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/z$2;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/z$2;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bx;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 147
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/z$2$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/z$2$1;-><init>(Lcom/baidu/bdgame/sdk/obf/z$2;)V

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/z$2;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ax;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/SapiAccountService;->getUserInfo(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2;->c:Lcom/baidu/bdgame/sdk/obf/z;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/z;->a(Lcom/baidu/bdgame/sdk/obf/z;)Lcom/baidu/bdgame/sdk/obf/mt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->b()V

    .line 141
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/z$2;->c:Lcom/baidu/bdgame/sdk/obf/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/z;->a(Lcom/baidu/bdgame/sdk/obf/z;Z)V

    .line 143
    return-void
.end method
