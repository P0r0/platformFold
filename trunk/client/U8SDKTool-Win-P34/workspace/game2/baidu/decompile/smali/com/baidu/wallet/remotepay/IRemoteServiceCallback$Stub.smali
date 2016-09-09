.class public abstract Lcom/baidu/wallet/remotepay/IRemoteServiceCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/remotepay/IRemoteServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.wallet.remotepay.IRemoteServiceCallback"

.field static final TRANSACTION_isHideLoadingDialog:I = 0x3

.field static final TRANSACTION_onPayEnd:I = 0x2

.field static final TRANSACTION_startActivity:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.baidu.wallet.remotepay.IRemoteServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.baidu.wallet.remotepay.IRemoteServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_60

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.baidu.wallet.remotepay.IRemoteServiceCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.baidu.wallet.remotepay.IRemoteServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_2e
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback$Stub;->startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_35
    const/4 v0, 0x0

    goto :goto_2e

    :sswitch_37
    const-string v0, "com.baidu.wallet.remotepay.IRemoteServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback$Stub;->onPayEnd(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_4b
    const-string v0, "com.baidu.wallet.remotepay.IRemoteServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback$Stub;->isHideLoadingDialog()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5e

    move v0, v1

    :goto_5a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_5e
    const/4 v0, 0x0

    goto :goto_5a

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_37
        0x3 -> :sswitch_4b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
