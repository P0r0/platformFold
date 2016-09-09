.class final Lcom/baidu/bdgame/sdk/obf/l$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/l$1;->a(ILjava/lang/String;Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/l$1;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/l$1;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/l$1$1;->a:Lcom/baidu/bdgame/sdk/obf/l$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 161
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/l$1$1;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 8

    .prologue
    .line 166
    if-nez p1, :cond_10

    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$1$1;->a:Lcom/baidu/bdgame/sdk/obf/l$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/l$1;->b:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_f

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$1$1;->a:Lcom/baidu/bdgame/sdk/obf/l$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/l$1;->b:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    :cond_f
    :goto_f
    return-void

    .line 171
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$1$1;->a:Lcom/baidu/bdgame/sdk/obf/l$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/l$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->e(Landroid/content/Context;)Z

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$1$1;->a:Lcom/baidu/bdgame/sdk/obf/l$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/l$1;->b:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_f

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$1$1;->a:Lcom/baidu/bdgame/sdk/obf/l$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/l$1;->b:Lcom/baidu/bdgame/sdk/obf/o;

    const/16 v1, -0x3ea

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/l$1$1;->a:Lcom/baidu/bdgame/sdk/obf/l$1;

    iget-object v2, v2, Lcom/baidu/bdgame/sdk/obf/l$1;->a:Landroid/content/Context;

    const-string v3, "bdp_account_authenticate_failed"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_f
.end method
