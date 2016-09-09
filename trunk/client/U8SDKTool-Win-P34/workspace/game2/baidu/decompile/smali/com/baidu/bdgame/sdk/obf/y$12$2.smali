.class final Lcom/baidu/bdgame/sdk/obf/y$12$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/y$12;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/y$12;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/y$12;ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 279
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/y$12$2;->c:Lcom/baidu/bdgame/sdk/obf/y$12;

    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/y$12$2;->a:Z

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/y$12$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 279
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/y$12$2;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 7

    .prologue
    .line 284
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/y$12$2;->c:Lcom/baidu/bdgame/sdk/obf/y$12;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/y$12;->a:Lcom/baidu/bdgame/sdk/obf/y;

    iget-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/y$12$2;->a:Z

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/y$12$2;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/y;ILjava/lang/String;ZLjava/lang/String;)V

    .line 285
    return-void
.end method
