.class public Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2b17f649e8a3811dL


# instance fields
.field public count:I

.field public detail:[Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;

.field public total_amount:Ljava/lang/String;

.field public total_count:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse;->detail:[Lcom/baidu/balance/datamodel/CashBackAccumulateInfoResponse$CashBackItem;

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
