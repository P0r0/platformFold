.class final Lcom/baidu/bdgame/sdk/obf/x$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/LoginActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/x;->a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/x;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/x;)V
    .registers 2

    .prologue
    .line 394
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/x$7;->a:Lcom/baidu/bdgame/sdk/obf/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 398
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/x$7;->a:Lcom/baidu/bdgame/sdk/obf/x;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/x;->j(Lcom/baidu/bdgame/sdk/obf/x;)I

    move-result v0

    if-ne p1, v0, :cond_10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 399
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/x$7;->a:Lcom/baidu/bdgame/sdk/obf/x;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/x;->k(Lcom/baidu/bdgame/sdk/obf/x;)V

    .line 401
    :cond_10
    return-void
.end method
