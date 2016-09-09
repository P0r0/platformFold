.class public Lcom/bbk/payment/action/Channel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bbk/payment/action/d;

    invoke-direct {v0}, Lcom/bbk/payment/action/d;-><init>()V

    sput-object v0, Lcom/bbk/payment/action/Channel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/action/Channel;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/action/Channel;->a:I

    return-void
.end method


# virtual methods
.method public Channel(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/bbk/payment/action/Channel;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbk/payment/action/Channel;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/action/Channel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityType()I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/action/Channel;->c:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/action/Channel;->a:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/action/Channel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public init(I)Z
    .registers 7

    const/4 v1, 0x1

    iput p1, p0, Lcom/bbk/payment/action/Channel;->a:I

    const/4 v0, 0x0

    const-string v2, "Channel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v1, :cond_2e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2e

    const/16 v2, 0x8

    if-eq p1, v2, :cond_2e

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_2f

    :cond_2e
    move v0, v1

    :cond_2f
    const-string v1, "Channel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init, success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCheck()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbk/payment/action/Channel;->e:Z

    return v0
.end method

.method public setActivityDesc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/action/Channel;->d:Ljava/lang/String;

    return-void
.end method

.method public setActivityType(I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/action/Channel;->c:I

    return-void
.end method

.method public setCheck(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bbk/payment/action/Channel;->e:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/action/Channel;->b:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/bbk/payment/action/Channel;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/action/Channel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/action/Channel;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/action/Channel;->getActivityDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/action/Channel;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method
