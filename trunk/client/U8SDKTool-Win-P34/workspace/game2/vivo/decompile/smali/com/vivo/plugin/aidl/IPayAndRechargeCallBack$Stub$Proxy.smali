.class Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPayAndRechargeCallBack.java"

# interfaces
.implements Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 88
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    const-string v0, "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

    return-object v0
.end method

.method public payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "transNo"    # Ljava/lang/String;
    .param p2, "pay_result"    # Z
    .param p3, "result_code"    # Ljava/lang/String;
    .param p4, "pay_msg"    # Ljava/lang/String;
    .param p5, "gamePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    if-eqz p2, :cond_31

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_33

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    return-void

    :cond_31
    move v2, v3

    .line 108
    goto :goto_14

    .line 115
    :catchall_33
    move-exception v2

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    throw v2
.end method

.method public rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "pay_result"    # Z
    .param p3, "result_code"    # Ljava/lang/String;
    .param p4, "pay_msg"    # Ljava/lang/String;
    .param p5, "gamePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.vivo.plugin.aidl.IPayAndRechargeCallBack"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    if-eqz p2, :cond_14

    const/4 v2, 0x1

    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_31

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    return-void

    .line 134
    :catchall_31
    move-exception v2

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw v2
.end method
