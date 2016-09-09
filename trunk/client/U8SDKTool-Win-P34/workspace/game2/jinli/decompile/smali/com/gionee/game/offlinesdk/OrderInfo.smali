.class public Lcom/gionee/game/offlinesdk/OrderInfo;
.super Ljava/lang/Object;
.source "OrderInfo.java"


# instance fields
.field private mCpOrderNum:Ljava/lang/String;

.field private mMessagePayCallback:Lcom/gionee/game/offlinesdk/MessagePayCallback;

.field private mPayMethod:I

.field private mProductName:Ljava/lang/String;

.field private mTotalFee:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mPayMethod:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCpOrderNum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mCpOrderNum:Ljava/lang/String;

    return-object v0
.end method

.method public getMessagePayCallback()Lcom/gionee/game/offlinesdk/MessagePayCallback;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mMessagePayCallback:Lcom/gionee/game/offlinesdk/MessagePayCallback;

    return-object v0
.end method

.method public getPayMethod()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mPayMethod:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFee()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mTotalFee:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setCpOrderNum(Ljava/lang/String;)V
    .registers 2
    .param p1, "cpOrderNum"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mCpOrderNum:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setMessagePayCallback(Lcom/gionee/game/offlinesdk/MessagePayCallback;)V
    .registers 2
    .param p1, "messagePayCallback"    # Lcom/gionee/game/offlinesdk/MessagePayCallback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mMessagePayCallback:Lcom/gionee/game/offlinesdk/MessagePayCallback;

    .line 54
    return-void
.end method

.method public setPayMethod(I)V
    .registers 2
    .param p1, "method"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mPayMethod:I

    .line 38
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mProductName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setTotalFee(Ljava/lang/String;)V
    .registers 2
    .param p1, "totalFee"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mTotalFee:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/OrderInfo;->mUserId:Ljava/lang/String;

    .line 46
    return-void
.end method
