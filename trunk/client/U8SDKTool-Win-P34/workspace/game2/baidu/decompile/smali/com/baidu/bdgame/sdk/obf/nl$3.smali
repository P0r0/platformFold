.class final Lcom/baidu/bdgame/sdk/obf/nl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/nl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/nl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/nl;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nl$3;->a:Lcom/baidu/bdgame/sdk/obf/nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 95
    if-nez p1, :cond_11

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl$3;->a:Lcom/baidu/bdgame/sdk/obf/nl;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/nl;->a(Lcom/baidu/bdgame/sdk/obf/nl;Ljava/lang/Object;)V

    .line 102
    :goto_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl$3;->a:Lcom/baidu/bdgame/sdk/obf/nl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nl;->a(Lcom/baidu/bdgame/sdk/obf/nl;)Lcom/baidu/bdgame/sdk/obf/nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nm;->m()V

    .line 103
    return-void

    .line 99
    :cond_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl$3;->a:Lcom/baidu/bdgame/sdk/obf/nl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nl;->b(Lcom/baidu/bdgame/sdk/obf/nl;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nl$3;->a:Lcom/baidu/bdgame/sdk/obf/nl;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/nl;->b(Lcom/baidu/bdgame/sdk/obf/nl;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7
.end method
