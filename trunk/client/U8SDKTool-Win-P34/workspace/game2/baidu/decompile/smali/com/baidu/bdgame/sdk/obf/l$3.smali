.class final Lcom/baidu/bdgame/sdk/obf/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/l;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/o;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/l;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4

    .prologue
    .line 251
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/l$3;->c:Lcom/baidu/bdgame/sdk/obf/l;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/l$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/l$3;->b:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 251
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/l$3;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 8

    .prologue
    .line 255
    if-nez p1, :cond_10

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$3;->c:Lcom/baidu/bdgame/sdk/obf/l;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/l$3;->a:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/l$3$1;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/l$3$1;-><init>(Lcom/baidu/bdgame/sdk/obf/l$3;)V

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/l;->a(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;ZLcom/baidu/bdgame/sdk/obf/o;)V

    .line 277
    :cond_f
    :goto_f
    return-void

    .line 274
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$3;->b:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_f

    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$3;->b:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_f
.end method
