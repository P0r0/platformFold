.class public abstract Lcom/gionee/account/aidl/GSPAccountInterface$Stub;
.super Landroid/os/Binder;
.source "GSPAccountInterface.java"

# interfaces
.implements Lcom/gionee/account/aidl/GSPAccountInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/account/aidl/GSPAccountInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/account/aidl/GSPAccountInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gionee.account.aidl.GSPAccountInterface"

.field static final TRANSACTION_getBIInfo:I = 0x5

.field static final TRANSACTION_getGoldCoin:I = 0x8

.field static final TRANSACTION_getInfo:I = 0x6

.field static final TRANSACTION_getPresentEvent:I = 0x7

.field static final TRANSACTION_getUserId:I = 0x2

.field static final TRANSACTION_isAccountLogin:I = 0x1

.field static final TRANSACTION_isNeedUpgradeAccount:I = 0x3

.field static final TRANSACTION_logoutAccount:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p0, p0, v0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gionee/account/aidl/GSPAccountInterface;
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
    const-string v1, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/gionee/account/aidl/GSPAccountInterface;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/gionee/account/aidl/GSPAccountInterface;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/gionee/account/aidl/GSPAccountInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_b8

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 42
    :sswitch_a
    const-string v3, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->isAccountLogin(Ljava/lang/String;)Z

    move-result v2

    .line 51
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_23

    move v3, v4

    :cond_23
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_27
    const-string v3, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_3b
    const-string v5, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->isNeedUpgradeAccount(Ljava/lang/String;)Z

    move-result v2

    .line 71
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_4e

    move v3, v4

    :cond_4e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_52
    const-string v3, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->logoutAccount(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_62
    const-string v3, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->getBIInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 90
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_9

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/Map;
    :sswitch_76
    const-string v3, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->getInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 106
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_8a
    const-string v3, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->getPresentEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 118
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_a3
    const-string v3, "com.gionee.account.aidl.GSPAccountInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->getGoldCoin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_52
        0x5 -> :sswitch_62
        0x6 -> :sswitch_76
        0x7 -> :sswitch_8a
        0x8 -> :sswitch_a3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
