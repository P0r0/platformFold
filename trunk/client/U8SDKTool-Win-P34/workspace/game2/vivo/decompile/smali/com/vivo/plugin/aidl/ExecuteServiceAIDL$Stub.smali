.class public abstract Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;
.super Landroid/os/Binder;
.source "ExecuteServiceAIDL.java"

# interfaces
.implements Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vivo.plugin.aidl.ExecuteServiceAIDL"

.field static final TRANSACTION_paymentActionInit:I = 0x4

.field static final TRANSACTION_paymentActionInitial:I = 0x5

.field static final TRANSACTION_registerCallBack:I = 0x1

.field static final TRANSACTION_startAssistService:I = 0x3

.field static final TRANSACTION_stopAssistService:I = 0x2

.field static final TRANSACTION_vivoAccountreportRoleInfo:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p0, p0, v0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
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
    const-string v1, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_a6

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 43
    goto :goto_8

    .line 47
    :sswitch_10
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/IAccountCallBack;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Lcom/vivo/plugin/aidl/IAccountCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    move-result-object v3

    .line 55
    .local v3, "_arg2":Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    move-result-object v5

    .local v5, "_arg4":Lcom/vivo/plugin/aidl/ISinglePayCallBack;
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->registerCallBack(Ljava/lang/String;Lcom/vivo/plugin/aidl/IAccountCallBack;Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;ILcom/vivo/plugin/aidl/ISinglePayCallBack;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 60
    goto :goto_8

    .line 64
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/vivo/plugin/aidl/IAccountCallBack;
    .end local v3    # "_arg2":Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcom/vivo/plugin/aidl/ISinglePayCallBack;
    :sswitch_3e
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->stopAssistService()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 67
    goto :goto_8

    .line 71
    :sswitch_4b
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->startAssistService(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 76
    goto :goto_8

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5c
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->paymentActionInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 87
    goto :goto_8

    .line 91
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_71
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->paymentActionInitial(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 96
    goto :goto_8

    .line 100
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_82
    const-string v0, "com.vivo.plugin.aidl.ExecuteServiceAIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL$Stub;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 113
    goto/16 :goto_8

    .line 38
    nop

    :sswitch_data_a6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_71
        0x6 -> :sswitch_82
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
