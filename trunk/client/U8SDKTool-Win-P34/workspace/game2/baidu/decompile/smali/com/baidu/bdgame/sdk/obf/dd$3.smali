.class final Lcom/baidu/bdgame/sdk/obf/dd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dd;->X()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dd;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dd;)V
    .registers 2

    .prologue
    .line 648
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dd$3;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 648
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dd$3;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 653
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFindPwdUrl BaiduBean resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 654
    if-nez p1, :cond_34

    .line 655
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd$3;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dd;->b(Lcom/baidu/bdgame/sdk/obf/dd;Ljava/lang/String;)Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd$3;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->c(Lcom/baidu/bdgame/sdk/obf/dd;)Lcom/baidu/bdgame/sdk/obf/fo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->b()V

    .line 658
    :cond_34
    return-void
.end method
