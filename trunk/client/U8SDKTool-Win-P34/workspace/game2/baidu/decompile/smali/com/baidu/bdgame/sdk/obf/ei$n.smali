.class Lcom/baidu/bdgame/sdk/obf/ei$n;
.super Lcom/baidu/bdgame/sdk/obf/ei$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/ei$g",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ei$g;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/ec;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 756
    const-string v0, "YiBaoCashCard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 779
    :goto_a
    return v0

    .line 760
    :cond_b
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/hc;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/hc;-><init>()V

    .line 762
    const-string v0, "CardNoLengthLimit"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_66

    .line 764
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 766
    :goto_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 767
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ei;->c(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v4

    .line 768
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v5, :cond_37

    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_55

    .line 769
    :cond_37
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ei$k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CardNoLengthLimit format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 770
    goto :goto_a

    .line 773
    :cond_55
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/hc;->a(Ljava/util/List;)V

    .line 777
    :cond_5c
    invoke-virtual {p4, v3}, Lcom/baidu/bdgame/sdk/obf/ec;->a(Ljava/lang/Object;)V

    .line 778
    const-string v0, "YiBaoCashCardPay"

    invoke-virtual {p4, v0}, Lcom/baidu/bdgame/sdk/obf/ec;->f(Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x1

    goto :goto_a

    :cond_66
    move-object v1, v0

    goto :goto_1d
.end method
