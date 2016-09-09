.class public abstract Lcom/unionpay/tsmservice/ITsmService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/unionpay/tsmservice/ITsmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/tsmservice/ITsmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/tsmservice/ITsmService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p0, p0, v0}, Lcom/unionpay/tsmservice/ITsmService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.unionpay.tsmservice.ITsmService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/unionpay/tsmservice/ITsmService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/unionpay/tsmservice/ITsmService;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/unionpay/tsmservice/ITsmService$Stub$a;

    invoke-direct {v0, p0}, Lcom/unionpay/tsmservice/ITsmService$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_522

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_11
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    sget-object v0, Lcom/unionpay/tsmservice/request/InitRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/InitRequestParams;

    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->init(Lcom/unionpay/tsmservice/request/InitRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto :goto_9

    :sswitch_38
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_56

    :goto_47
    invoke-virtual {p0, v2, v0}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getPubKey(I[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :cond_56
    new-array v0, v3, [Ljava/lang/String;

    goto :goto_47

    :sswitch_59
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_77

    :goto_68
    invoke-virtual {p0, v2, v0}, Lcom/unionpay/tsmservice/ITsmService$Stub;->exchangeKey(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :cond_77
    new-array v0, v3, [Ljava/lang/String;

    goto :goto_68

    :sswitch_7a
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8d

    sget-object v0, Lcom/unionpay/tsmservice/request/EncryptDataRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/EncryptDataRequestParams;

    :cond_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->encryptData(Lcom/unionpay/tsmservice/request/EncryptDataRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_a2
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b5

    sget-object v0, Lcom/unionpay/tsmservice/request/GetSeIdRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetSeIdRequestParams;

    :cond_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getSEId(Lcom/unionpay/tsmservice/request/GetSeIdRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_ca
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_dd

    sget-object v0, Lcom/unionpay/tsmservice/request/GetAssociatedAppRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAssociatedAppRequestParams;

    :cond_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getAssociatedApp(Lcom/unionpay/tsmservice/request/GetAssociatedAppRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_f2
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_105

    sget-object v0, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;

    :cond_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getSEAppList(Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_11a
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12d

    sget-object v0, Lcom/unionpay/tsmservice/request/GetAppListRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAppListRequestParams;

    :cond_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getAppList(Lcom/unionpay/tsmservice/request/GetAppListRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_142
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_155

    sget-object v0, Lcom/unionpay/tsmservice/request/GetAppStatusRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAppStatusRequestParams;

    :cond_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getAppStatus(Lcom/unionpay/tsmservice/request/GetAppStatusRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_16a
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17d

    sget-object v0, Lcom/unionpay/tsmservice/request/GetAppDetailRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAppDetailRequestParams;

    :cond_17d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getAppDetail(Lcom/unionpay/tsmservice/request/GetAppDetailRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_192
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a5

    sget-object v0, Lcom/unionpay/tsmservice/request/GetTransElementsRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetTransElementsRequestParams;

    :cond_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getTransElements(Lcom/unionpay/tsmservice/request/GetTransElementsRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_1ba
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1cd

    sget-object v0, Lcom/unionpay/tsmservice/request/AppDownloadApplyRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/AppDownloadApplyRequestParams;

    :cond_1cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->appDownloadApply(Lcom/unionpay/tsmservice/request/AppDownloadApplyRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_1e2
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f5

    sget-object v0, Lcom/unionpay/tsmservice/request/AppDownloadRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/AppDownloadRequestParams;

    :cond_1f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/tsmservice/ITsmProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmProgressCallback;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/unionpay/tsmservice/ITsmService$Stub;->appDownload(Lcom/unionpay/tsmservice/request/AppDownloadRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_212
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_225

    sget-object v0, Lcom/unionpay/tsmservice/request/AppDeleteRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/AppDeleteRequestParams;

    :cond_225
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/tsmservice/ITsmProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmProgressCallback;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/unionpay/tsmservice/ITsmService$Stub;->appDelete(Lcom/unionpay/tsmservice/request/AppDeleteRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_242
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_255

    sget-object v0, Lcom/unionpay/tsmservice/request/AppDataUpdateRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/AppDataUpdateRequestParams;

    :cond_255
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/tsmservice/ITsmProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmProgressCallback;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/unionpay/tsmservice/ITsmService$Stub;->appDataUpdate(Lcom/unionpay/tsmservice/request/AppDataUpdateRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_272
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_285

    sget-object v0, Lcom/unionpay/tsmservice/request/AppLockRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/AppLockRequestParams;

    :cond_285
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->appLock(Lcom/unionpay/tsmservice/request/AppLockRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_29a
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2ad

    sget-object v0, Lcom/unionpay/tsmservice/request/AppUnlockRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/AppUnlockRequestParams;

    :cond_2ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->appUnlock(Lcom/unionpay/tsmservice/request/AppUnlockRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_2c2
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d5

    sget-object v0, Lcom/unionpay/tsmservice/request/GetSMSAuthCodeRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetSMSAuthCodeRequestParams;

    :cond_2d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getSMSAuthCode(Lcom/unionpay/tsmservice/request/GetSMSAuthCodeRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_2ea
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2fd

    sget-object v0, Lcom/unionpay/tsmservice/request/ECashTopUpRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/ECashTopUpRequestParams;

    :cond_2fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->eCashTopUp(Lcom/unionpay/tsmservice/request/ECashTopUpRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_312
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_325

    sget-object v0, Lcom/unionpay/tsmservice/request/GetTransRecordRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetTransRecordRequestParams;

    :cond_325
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getTransRecord(Lcom/unionpay/tsmservice/request/GetTransRecordRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_33a
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34d

    sget-object v0, Lcom/unionpay/tsmservice/request/GetAccountInfoRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAccountInfoRequestParams;

    :cond_34d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getAccountInfo(Lcom/unionpay/tsmservice/request/GetAccountInfoRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_362
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_375

    sget-object v0, Lcom/unionpay/tsmservice/request/GetAccountBalanceRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetAccountBalanceRequestParams;

    :cond_375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getAccountBalance(Lcom/unionpay/tsmservice/request/GetAccountBalanceRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_38a
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39d

    sget-object v0, Lcom/unionpay/tsmservice/request/GetCardInfoRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetCardInfoRequestParams;

    :cond_39d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getCardInfo(Lcom/unionpay/tsmservice/request/GetCardInfoRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_3b2
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c5

    sget-object v0, Lcom/unionpay/tsmservice/request/SetDefaultCardRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/SetDefaultCardRequestParams;

    :cond_3c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->setDefaultCard(Lcom/unionpay/tsmservice/request/SetDefaultCardRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_3da
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3ed

    sget-object v0, Lcom/unionpay/tsmservice/request/GetDefaultCardRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetDefaultCardRequestParams;

    :cond_3ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getDefaultCard(Lcom/unionpay/tsmservice/request/GetDefaultCardRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_402
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_415

    sget-object v0, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;

    :cond_415
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->openChannel(Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_42a
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_43d

    sget-object v0, Lcom/unionpay/tsmservice/request/SendApduRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    :cond_43d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->sendApdu(Lcom/unionpay/tsmservice/request/SendApduRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_452
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_465

    sget-object v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;

    :cond_465
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->closeChannel(Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_47a
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48d

    sget-object v0, Lcom/unionpay/tsmservice/request/HideAppApplyRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/HideAppApplyRequestParams;

    :cond_48d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->hideAppApply(Lcom/unionpay/tsmservice/request/HideAppApplyRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_4a2
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b5

    sget-object v0, Lcom/unionpay/tsmservice/request/ExecuteCmdRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/ExecuteCmdRequestParams;

    :cond_4b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/tsmservice/ITsmProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmProgressCallback;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/unionpay/tsmservice/ITsmService$Stub;->executeCmd(Lcom/unionpay/tsmservice/request/ExecuteCmdRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;Lcom/unionpay/tsmservice/ITsmProgressCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_4d2
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e5

    sget-object v0, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;

    :cond_4e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->getCardInfoBySamsungPay(Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_4fa
    const-string v2, "com.unionpay.tsmservice.ITsmService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50d

    sget-object v0, Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;

    :cond_50d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/ITsmCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/tsmservice/ITsmService$Stub;->checkSSamsungPay(Lcom/unionpay/tsmservice/request/CheckSSamsungPayRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_data_522
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_38
        0x3 -> :sswitch_59
        0x4 -> :sswitch_7a
        0x5 -> :sswitch_a2
        0x6 -> :sswitch_ca
        0x7 -> :sswitch_f2
        0x8 -> :sswitch_11a
        0x9 -> :sswitch_142
        0xa -> :sswitch_16a
        0xb -> :sswitch_192
        0xc -> :sswitch_1ba
        0xd -> :sswitch_1e2
        0xe -> :sswitch_212
        0xf -> :sswitch_242
        0x10 -> :sswitch_272
        0x11 -> :sswitch_29a
        0x12 -> :sswitch_2c2
        0x13 -> :sswitch_2ea
        0x14 -> :sswitch_312
        0x15 -> :sswitch_33a
        0x16 -> :sswitch_362
        0x17 -> :sswitch_38a
        0x18 -> :sswitch_3b2
        0x19 -> :sswitch_3da
        0x1a -> :sswitch_402
        0x1b -> :sswitch_42a
        0x1c -> :sswitch_452
        0x1d -> :sswitch_47a
        0x1e -> :sswitch_4a2
        0x1f -> :sswitch_4d2
        0x20 -> :sswitch_4fa
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
