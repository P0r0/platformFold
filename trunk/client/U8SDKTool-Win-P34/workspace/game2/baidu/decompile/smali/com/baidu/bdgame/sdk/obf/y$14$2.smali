.class final Lcom/baidu/bdgame/sdk/obf/y$14$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/y$14;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/y$14;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/y$14;)V
    .registers 2

    .prologue
    .line 331
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/y$14$2;->a:Lcom/baidu/bdgame/sdk/obf/y$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 336
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/y$14$2;->a:Lcom/baidu/bdgame/sdk/obf/y$14;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/y$14;->a:Lcom/baidu/bdgame/sdk/obf/y;

    invoke-static {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/y;ILjava/lang/String;Ljava/lang/Object;)V

    .line 337
    return-void
.end method
