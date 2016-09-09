.class final Lcom/baidu/bdgame/sdk/obf/ge$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/platformsdk/wxpay/IPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ge;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ge;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ge;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ge$3;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultDes"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ge$3;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$3;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ge;->a(I)Lcom/baidu/bdgame/sdk/obf/kk;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$3;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->e(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/gf;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, ""

    :goto_12
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ge;->b(Lcom/baidu/bdgame/sdk/obf/ge;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 188
    :cond_16
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$3;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->e(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gf;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
