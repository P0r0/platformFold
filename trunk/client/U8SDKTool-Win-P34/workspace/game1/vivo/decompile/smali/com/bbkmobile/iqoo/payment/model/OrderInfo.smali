.class public Lcom/bbkmobile/iqoo/payment/model/OrderInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static logOnOff:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:D

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->logOnOff:Z

    new-instance v0, Lcom/bbkmobile/iqoo/payment/model/a;

    invoke-direct {v0}, Lcom/bbkmobile/iqoo/payment/model/a;-><init>()V

    sput-object v0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->g:Ljava/lang/String;

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->h:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->g:Ljava/lang/String;

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->h:D

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->b:Ljava/lang/String;

    iput-object p7, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->c:Ljava/lang/String;

    iput-wide p8, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->h:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCard_amount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_num()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_pwd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCard_type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageN()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .registers 3

    iget-wide v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->h:D

    return-wide v0
.end method

.method public getProductDes()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRechargeOrderNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTransNo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUseMode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setCard_amount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public setCard_num(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setCard_pwd(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setCard_type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public setPackageN(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setPrice(D)V
    .registers 4

    iput-wide p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->h:D

    return-void
.end method

.method public setProductDes(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setRechargeOrderNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setTransNo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setUseMode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{transNo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",productName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",productDes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",packageN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",useMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",price:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->h:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getProductDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getUseMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/model/OrderInfo;->getPrice()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
