.class final Lcom/baidu/bdgame/sdk/obf/ej$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ej;->m()V
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
        "Lcom/baidu/bdgame/sdk/obf/hm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ej;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ej;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej$10;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hm;)V
    .registers 7

    .prologue
    .line 228
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performAgreement .. onCallback resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$10;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->O()V

    .line 232
    if-nez p1, :cond_2b

    if-eqz p3, :cond_2b

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$10;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/hm;)V

    .line 245
    :goto_2a
    return-void

    .line 235
    :cond_2b
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 236
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej$10;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    if-nez p3, :cond_3d

    const-string v0, ""

    :goto_39
    invoke-static {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ej;->b(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_3d
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/hm;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 239
    :cond_42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$10;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->c(Landroid/content/Context;)V

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$10;->a:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->a(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_2a
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 223
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/hm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ej$10;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hm;)V

    return-void
.end method
