.class public abstract Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub$a;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field private static final d:Ljava/lang/String; = "com.baidu.sumeru.sso.aidl.BaiduSSOInfo"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.baidu.sumeru.sso.aidl.BaiduSSOInfo"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;
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
    const-string v0, "com.baidu.sumeru.sso.aidl.BaiduSSOInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub$a;

    invoke-direct {v0, p0}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 7
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
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_48

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v1, "com.baidu.sumeru.sso.aidl.BaiduSSOInfo"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v1, "com.baidu.sumeru.sso.aidl.BaiduSSOInfo"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub;->getInfo(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 56
    :sswitch_1f
    const-string v1, "com.baidu.sumeru.sso.aidl.BaiduSSOInfo"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener;

    move-result-object v1

    .line 59
    invoke-virtual {p0, v1}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub;->registerCallback(Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 65
    :sswitch_33
    const-string v1, "com.baidu.sumeru.sso.aidl.BaiduSSOInfo"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener;

    move-result-object v1

    .line 68
    invoke-virtual {p0, v1}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub;->unregisterCallback(Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_33
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
