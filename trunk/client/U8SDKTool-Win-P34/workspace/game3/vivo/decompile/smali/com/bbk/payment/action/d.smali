.class final Lcom/bbk/payment/action/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    new-instance v1, Lcom/bbk/payment/action/Channel;

    invoke-direct {v1}, Lcom/bbk/payment/action/Channel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/bbk/payment/action/Channel;->a(Lcom/bbk/payment/action/Channel;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbk/payment/action/Channel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bbk/payment/action/Channel;->setActivityType(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbk/payment/action/Channel;->setActivityDesc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2c

    :goto_28
    invoke-virtual {v1, v0}, Lcom/bbk/payment/action/Channel;->setCheck(Z)V

    return-object v1

    :cond_2c
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/bbk/payment/action/Channel;

    return-object v0
.end method
