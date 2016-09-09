.class public Lcom/baidu/paysdk/datamodel/QueryBankBinResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x64dcda21b3663581L


# instance fields
.field public card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryBankBinResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
