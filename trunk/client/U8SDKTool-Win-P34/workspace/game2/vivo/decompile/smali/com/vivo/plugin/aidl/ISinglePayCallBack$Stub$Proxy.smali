.class Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISinglePayCallBack.java"

# interfaces
.implements Lcom/vivo/plugin/aidl/ISinglePayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub;
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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const-string v0, "com.vivo.plugin.aidl.ISinglePayCallBack"

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

    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 87
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 89
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.vivo.plugin.aidl.ISinglePayCallBack"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_31

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/vivo/plugin/aidl/ISinglePayCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_33

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 102
    return-void

    :cond_31
    move v2, v3

    .line 91
    goto :goto_14

    .line 98
    :catchall_33
    move-exception v2

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    throw v2
.end method
