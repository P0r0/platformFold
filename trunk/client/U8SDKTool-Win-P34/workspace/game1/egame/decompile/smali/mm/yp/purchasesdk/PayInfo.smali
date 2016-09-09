.class public Lmm/yp/purchasesdk/PayInfo;
.super Ljava/lang/Object;


# static fields
.field private static mItemPrice:F

.field private static mTotalPrice:F


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mChannelCode:Ljava/lang/String;

.field private mProductCount:I

.field private mProductName:Ljava/lang/String;

.field private mProvider:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lmm/yp/purchasesdk/PayInfo;->mItemPrice:F

    sput v0, Lmm/yp/purchasesdk/PayInfo;->mTotalPrice:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemPrice()F
    .registers 1

    sget v0, Lmm/yp/purchasesdk/PayInfo;->mItemPrice:F

    return v0
.end method

.method public static getTotalPrice()F
    .registers 1

    sget v0, Lmm/yp/purchasesdk/PayInfo;->mTotalPrice:F

    return v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmm/yp/purchasesdk/PayInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmm/yp/purchasesdk/PayInfo;->mChannelCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCount()I
    .registers 2

    iget v0, p0, Lmm/yp/purchasesdk/PayInfo;->mProductCount:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmm/yp/purchasesdk/PayInfo;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmm/yp/purchasesdk/PayInfo;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lmm/yp/purchasesdk/PayInfo;->mStatusCode:I

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/PayInfo;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setChannelCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/PayInfo;->mChannelCode:Ljava/lang/String;

    return-void
.end method

.method public setItemPrice(F)V
    .registers 2

    sput p1, Lmm/yp/purchasesdk/PayInfo;->mItemPrice:F

    return-void
.end method

.method public setProductCount(I)V
    .registers 2

    iput p1, p0, Lmm/yp/purchasesdk/PayInfo;->mProductCount:I

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/PayInfo;->mProductName:Ljava/lang/String;

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/PayInfo;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(I)V
    .registers 2

    iput p1, p0, Lmm/yp/purchasesdk/PayInfo;->mStatusCode:I

    return-void
.end method

.method public setTotalPrice(F)V
    .registers 2

    sput p1, Lmm/yp/purchasesdk/PayInfo;->mTotalPrice:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Privider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmm/yp/purchasesdk/PayInfo;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",AppName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmm/yp/purchasesdk/PayInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",Product:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmm/yp/purchasesdk/PayInfo;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",ProductPrice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmm/yp/purchasesdk/PayInfo;->mItemPrice:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
