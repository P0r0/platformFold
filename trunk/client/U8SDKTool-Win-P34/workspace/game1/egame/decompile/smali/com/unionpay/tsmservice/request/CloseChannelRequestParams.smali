.class public Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;
.super Lcom/unionpay/tsmservice/request/RequestParams;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams$1;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams$1;-><init>()V

    sput-object v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/unionpay/tsmservice/request/RequestParams;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unionpay/tsmservice/request/RequestParams;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/unionpay/tsmservice/request/RequestParams;-><init>()V

    iput-object p1, p0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->mChannel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/unionpay/tsmservice/request/RequestParams;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->mChannel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method