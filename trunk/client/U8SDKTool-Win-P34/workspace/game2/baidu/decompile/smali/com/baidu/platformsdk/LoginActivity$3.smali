.class final Lcom/baidu/platformsdk/LoginActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/LoginActivity;->d()V
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
.field final synthetic a:Lcom/baidu/platformsdk/LoginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 157
    if-nez p1, :cond_13

    .line 159
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nl;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/LoginActivity;->e(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/nl;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nl;->a()V

    .line 173
    :goto_12
    return-void

    .line 161
    :cond_13
    const v0, 0xa474

    if-ne p1, v0, :cond_2d

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/av;

    if-eqz v0, :cond_2d

    .line 163
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/w;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/LoginActivity;->e(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/w;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/av;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/w;->a()V

    goto :goto_12

    .line 165
    :cond_2d
    const v0, 0xa475

    if-ne p1, v0, :cond_47

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/av;

    if-eqz v0, :cond_47

    .line 167
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/w;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/LoginActivity;->e(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/av;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/w;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/av;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/w;->b()V

    goto :goto_12

    .line 171
    :cond_47
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity$3;->a:Lcom/baidu/platformsdk/LoginActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/LoginActivity;->c(Lcom/baidu/platformsdk/LoginActivity;)V

    goto :goto_12
.end method
