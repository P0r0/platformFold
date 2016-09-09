.class public Lcom/nearme/game/sdk/common/model/biz/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_AUTO_ORDER_ALIPAY:I = 0x5

.field public static final TYPE_AUTO_ORDER_NOWPAY:I = 0x4

.field public static final TYPE_AUTO_ORDER_WXPAY:I = 0x3

.field public static final TYPE_CHARGE:I = 0x0

.field public static final TYPE_DIRECT_CHARGE:I = 0x2

.field public static final TYPE_NOARMAL_PAY:I = 0x1

.field private static final serialVersionUID:J = -0x608e2245593cf54L


# instance fields
.field private amount:I

.field private attach:Ljava/lang/String;

.field private callbackUrl:Ljava/lang/String;

.field private order:Ljava/lang/String;

.field private productDesc:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private showCpSmsChannel:Z

.field private type:I

.field private useCachedChannel:Z

.field protected voucherCount:I

.field protected voucherId:I

.field protected voucherType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productName:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productDesc:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->callbackUrl:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->type:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->showCpSmsChannel:Z

    .line 81
    iput-boolean v1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->useCachedChannel:Z

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid order when create PayInfo."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_25
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->order:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->attach:Ljava/lang/String;

    .line 89
    iput p3, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->amount:I

    .line 90
    return-void
.end method


# virtual methods
.method public getAmount()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->amount:I

    return v0
.end method

.method public getAttach()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->attach:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCpSmsChannel()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->showCpSmsChannel:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->type:I

    return v0
.end method

.method public getUseCachedChannel()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->useCachedChannel:Z

    return v0
.end method

.method public getVoucherCount()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherCount:I

    return v0
.end method

.method public getVoucherId()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherId:I

    return v0
.end method

.method public getVoucherType()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherType:I

    return v0
.end method

.method public setAmount(I)V
    .registers 2

    .prologue
    .line 113
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->amount:I

    .line 114
    return-void
.end method

.method public setAttach(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->attach:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->callbackUrl:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->order:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productDesc:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->productName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setShowCpSmsChannel(Z)V
    .registers 2

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->showCpSmsChannel:Z

    .line 178
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 169
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->type:I

    .line 170
    return-void
.end method

.method public setUseCachedChannel(Z)V
    .registers 2

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->useCachedChannel:Z

    .line 186
    return-void
.end method

.method public setVoucherCount(I)V
    .registers 2

    .prologue
    .line 161
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherCount:I

    .line 162
    return-void
.end method

.method public setVoucherId(I)V
    .registers 2

    .prologue
    .line 145
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherId:I

    .line 146
    return-void
.end method

.method public setVoucherType(I)V
    .registers 2

    .prologue
    .line 153
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->voucherType:I

    .line 154
    return-void
.end method
