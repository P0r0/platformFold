.class final Lcom/baidu/bdgame/sdk/obf/dd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dd;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dd;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dd;)V
    .registers 2

    .prologue
    .line 610
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dd$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 619
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dd$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_login_find_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dd$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/dd;->a(Lcom/baidu/bdgame/sdk/obf/dd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/platformsdk/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd$1;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dd;->a(Lcom/baidu/bdgame/sdk/obf/dd;Ljava/lang/String;)V

    .line 615
    return-void
.end method