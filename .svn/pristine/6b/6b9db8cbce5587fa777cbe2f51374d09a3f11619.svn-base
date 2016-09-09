.class public abstract Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gionee.gncustomerservice.aidl.server.IStatisticsInterface"

    invoke-virtual {p0, p0, v0}, Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.gionee.gncustomerservice.aidl.server.IStatisticsInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/gionee/gncustomerservice/aidl/server/a;

    invoke-direct {v0, p0}, Lcom/gionee/gncustomerservice/aidl/server/a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_40

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "com.gionee.gncustomerservice.aidl.server.IStatisticsInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v2, "com.gionee.gncustomerservice.aidl.server.IStatisticsInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface$Stub;->getUserImprovementState()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1f

    move v0, v1

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_23
    const-string v2, "com.gionee.gncustomerservice.aidl.server.IStatisticsInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    move v2, v1

    :goto_2f
    invoke-virtual {p0, v2}, Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface$Stub;->setUserImprovementState(Z)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_39

    move v0, v1

    :cond_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_3d
    move v2, v0

    goto :goto_2f

    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
