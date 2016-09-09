.class final Lcom/baidu/bdgame/sdk/obf/eo$1;
.super Lcom/baidu/bdgame/sdk/obf/bx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/eo;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eo;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/eo;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 75
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eo$1;->a:Lcom/baidu/bdgame/sdk/obf/eo;

    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/bx;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo$1;->a:Lcom/baidu/bdgame/sdk/obf/eo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eo;->a(Lcom/baidu/bdgame/sdk/obf/eo;)V

    .line 87
    return-void
.end method

.method protected a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 80
    invoke-static {p1, p3}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo$1;->a:Lcom/baidu/bdgame/sdk/obf/eo;

    const/4 v1, 0x2

    invoke-static {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/eo;->a(Lcom/baidu/bdgame/sdk/obf/eo;ILjava/lang/String;)V

    .line 82
    return-void
.end method
