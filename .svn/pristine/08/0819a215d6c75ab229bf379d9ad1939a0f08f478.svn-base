.class final Lcom/baidu/bdgame/sdk/obf/nm$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/nm;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/nm;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/nm;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nm$12;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm$12;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->m(Lcom/baidu/bdgame/sdk/obf/nm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 247
    const-string v0, "http://www.baidu.com/"

    .line 250
    :cond_12
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nm$12;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nm$12;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/nm$12;->a:Lcom/baidu/bdgame/sdk/obf/nm;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_account_visitor_bind_login_mail"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/platformsdk/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method
