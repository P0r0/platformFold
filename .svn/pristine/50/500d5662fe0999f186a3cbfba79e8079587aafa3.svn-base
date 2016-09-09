.class public abstract Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;
.super Landroid/os/Binder;
.source "IAccountCallBack.java"

# interfaces
.implements Lcom/vivo/plugin/aidl/IAccountCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/plugin/aidl/IAccountCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/plugin/aidl/IAccountCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vivo.plugin.aidl.IAccountCallBack"

.field static final TRANSACTION_loginCancel:I = 0x2

.field static final TRANSACTION_loginResult:I = 0x1

.field static final TRANSACTION_updateCancel:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.vivo.plugin.aidl.IAccountCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/IAccountCallBack;
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
    const-string v1, "com.vivo.plugin.aidl.IAccountCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/vivo/plugin/aidl/IAccountCallBack;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/vivo/plugin/aidl/IAccountCallBack;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_40

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v4, "com.vivo.plugin.aidl.IAccountCallBack"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "com.vivo.plugin.aidl.IAccountCallBack"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;->loginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_27
    const-string v4, "com.vivo.plugin.aidl.IAccountCallBack"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;->loginCancel()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 67
    :sswitch_33
    const-string v4, "com.vivo.plugin.aidl.IAccountCallBack"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;->updateCancel()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_27
        0x3 -> :sswitch_33
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
