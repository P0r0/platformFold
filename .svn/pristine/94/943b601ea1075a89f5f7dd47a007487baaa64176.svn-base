.class public abstract Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;
.super Landroid/os/Binder;
.source "IPayAndRechargeCallBack.java"

# interfaces
.implements Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

.field static final TRANSACTION_payResult:I = 0x1

.field static final TRANSACTION_rechargeResult:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_58

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v0, "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    move v2, v6

    .line 53
    .local v2, "_arg1":Z
    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 64
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :sswitch_34
    const-string v0, "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    move v2, v6

    .line 70
    .restart local v2    # "_arg1":Z
    :cond_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;->rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 38
    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_34
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
