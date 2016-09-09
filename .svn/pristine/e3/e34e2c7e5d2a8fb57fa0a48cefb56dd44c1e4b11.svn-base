.class final Lcom/baidu/bdgame/sdk/obf/eo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/android/pay/PayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/eo;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eo;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/eo;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eo$2;->a:Lcom/baidu/bdgame/sdk/obf/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHideLoadingDialog()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onPayResult(ILjava/lang/String;)V
    .registers 6
    .param p1, "stateCode"    # I
    .param p2, "payDesc"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "BfbPayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rsult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#desc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eo$2;->a:Lcom/baidu/bdgame/sdk/obf/eo;

    invoke-static {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/eo;->a(Lcom/baidu/bdgame/sdk/obf/eo;ILjava/lang/String;)V

    .line 98
    return-void
.end method
