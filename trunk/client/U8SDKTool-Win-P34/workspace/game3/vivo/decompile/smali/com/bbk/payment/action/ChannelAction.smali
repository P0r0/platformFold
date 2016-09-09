.class public Lcom/bbk/payment/action/ChannelAction;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bbk/payment/action/e;

    invoke-direct {v0}, Lcom/bbk/payment/action/e;-><init>()V

    sput-object v0, Lcom/bbk/payment/action/ChannelAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/action/ChannelAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/action/ChannelAction;->b:I

    return v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/action/ChannelAction;->a:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/action/ChannelAction;->c:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/action/ChannelAction;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/bbk/payment/action/ChannelAction;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/action/ChannelAction;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/action/ChannelAction;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
