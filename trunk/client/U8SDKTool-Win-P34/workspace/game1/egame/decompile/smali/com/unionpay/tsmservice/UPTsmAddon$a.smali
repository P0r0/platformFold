.class final Lcom/unionpay/tsmservice/UPTsmAddon$a;
.super Lcom/unionpay/tsmservice/ITsmCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/tsmservice/UPTsmAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/UPTsmAddon;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/unionpay/tsmservice/UPTsmAddon;II)V
    .registers 4

    iput-object p1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-direct {p0}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;-><init>()V

    iput p2, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    iput p3, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/unionpay/tsmservice/UPTsmAddon;IIB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/tsmservice/UPTsmAddon$a;-><init>(Lcom/unionpay/tsmservice/UPTsmAddon;II)V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "errorCode"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "errorDesc"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget v2, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    invoke-static {v0, v2}, Lcom/unionpay/tsmservice/UPTsmAddon;->a(Lcom/unionpay/tsmservice/UPTsmAddon;I)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->a(Lcom/unionpay/tsmservice/ITsmCallback;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->a(Lcom/unionpay/tsmservice/UPTsmAddon;I)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->a(Lcom/unionpay/tsmservice/UPTsmAddon;I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-static {v0}, Lcom/unionpay/tsmservice/UPTsmAddon;->b(Lcom/unionpay/tsmservice/UPTsmAddon;)[I

    move-result-object v0

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    const/4 v2, 0x0

    aput v2, v0, v1

    :cond_52
    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "errorCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-static {v4}, Lcom/unionpay/tsmservice/utils/IUPJniInterface;->dMG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "errorCode"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3c

    array-length v3, v4

    if-eqz v3, :cond_3c

    array-length v3, v4

    invoke-virtual {v2, v4, v6, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_3c
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-eqz v3, :cond_218

    :cond_42
    packed-switch v0, :pswitch_data_21c

    :goto_45
    :pswitch_45
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->a(Lcom/unionpay/tsmservice/UPTsmAddon;I)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/ITsmCallback;

    invoke-static {v0, p1}, Lcom/unionpay/tsmservice/UPTsmAddon;->a(Lcom/unionpay/tsmservice/ITsmCallback;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->a(Lcom/unionpay/tsmservice/UPTsmAddon;I)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->a(Lcom/unionpay/tsmservice/UPTsmAddon;I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-static {v0}, Lcom/unionpay/tsmservice/UPTsmAddon;->b(Lcom/unionpay/tsmservice/UPTsmAddon;)[I

    move-result-object v0

    iget v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$a;->b:I

    aput v6, v0, v1

    :cond_8a
    return-void

    :pswitch_8b
    const-class v0, Lcom/unionpay/tsmservice/result/InitResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/InitResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto :goto_45

    :pswitch_9e
    const-class v0, Lcom/unionpay/tsmservice/result/GetAssociatedAppResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetAssociatedAppResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto :goto_45

    :pswitch_b1
    const-class v0, Lcom/unionpay/tsmservice/result/GetSeAppListResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetSeAppListResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto :goto_45

    :pswitch_c4
    const-class v0, Lcom/unionpay/tsmservice/result/GetAppListResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetAppListResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_d8
    const-class v0, Lcom/unionpay/tsmservice/result/GetAppDetailResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetAppDetailResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_ec
    const-class v0, Lcom/unionpay/tsmservice/result/GetTransElementsResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetTransElementsResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_100
    const-class v0, Lcom/unionpay/tsmservice/result/AppDownloadApplyResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/AppDownloadApplyResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_114
    const-class v0, Lcom/unionpay/tsmservice/result/GetSMSAuthCodeResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetSMSAuthCodeResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_128
    const-class v0, Lcom/unionpay/tsmservice/result/GetAccountInfoResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetAccountInfoResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_13c
    const-class v0, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_150
    const-class v0, Lcom/unionpay/tsmservice/result/GetCardInfoResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetCardInfoResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_164
    const-class v0, Lcom/unionpay/tsmservice/result/GetDefaultCardResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetDefaultCardResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_178
    const-class v0, Lcom/unionpay/tsmservice/result/GetSeIdResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetSeIdResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_18c
    const-class v0, Lcom/unionpay/tsmservice/result/GetTransRecordResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetTransRecordResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_1a0
    const-class v0, Lcom/unionpay/tsmservice/result/ECashTopUpResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/ECashTopUpResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_1b4
    const-class v0, Lcom/unionpay/tsmservice/result/EncryptDataResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/EncryptDataResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_1c8
    const-class v0, Lcom/unionpay/tsmservice/result/OpenChannelResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/OpenChannelResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_1dc
    const-class v0, Lcom/unionpay/tsmservice/result/SendApduResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/SendApduResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_1f0
    const-class v0, Lcom/unionpay/tsmservice/result/GetCardInfoBySpayResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetCardInfoBySpayResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :pswitch_204
    const-class v0, Lcom/unionpay/tsmservice/result/CheckSSamsungPayResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/CheckSSamsungPayResult;

    const-string v3, "result"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p1, v1

    goto/16 :goto_45

    :cond_218
    move-object p1, v1

    goto/16 :goto_45

    nop

    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_9e
        :pswitch_c4
        :pswitch_b1
        :pswitch_d8
        :pswitch_45
        :pswitch_150
        :pswitch_128
        :pswitch_13c
        :pswitch_ec
        :pswitch_18c
        :pswitch_114
        :pswitch_178
        :pswitch_164
        :pswitch_45
        :pswitch_100
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_1a0
        :pswitch_1c8
        :pswitch_45
        :pswitch_1dc
        :pswitch_1b4
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_1f0
        :pswitch_204
    .end packed-switch
.end method
