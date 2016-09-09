.class public Lcom/baidu/balance/datamodel/BaizhuanfenCoreInfoResponse$ScoreInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/balance/datamodel/BaizhuanfenCoreInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScoreInfo"
.end annotation


# instance fields
.field public deduction:Ljava/lang/String;

.field public score:Ljava/lang/String;

.field public score_expire:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasScore()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/balance/datamodel/BaizhuanfenCoreInfoResponse$ScoreInfo;->score:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    :try_start_a
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/baidu/balance/datamodel/BaizhuanfenCoreInfoResponse$ScoreInfo;->score:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1b

    move-result v1

    if-lez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :catch_1b
    move-exception v1

    goto :goto_9
.end method
