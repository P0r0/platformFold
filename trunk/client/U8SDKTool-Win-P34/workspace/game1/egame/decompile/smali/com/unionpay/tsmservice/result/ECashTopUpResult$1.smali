.class final Lcom/unionpay/tsmservice/result/ECashTopUpResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/unionpay/tsmservice/result/ECashTopUpResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/unionpay/tsmservice/result/ECashTopUpResult;
    .registers 3

    new-instance v0, Lcom/unionpay/tsmservice/result/ECashTopUpResult;

    invoke-direct {v0, p1}, Lcom/unionpay/tsmservice/result/ECashTopUpResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/result/ECashTopUpResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unionpay/tsmservice/result/ECashTopUpResult;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/unionpay/tsmservice/result/ECashTopUpResult;
    .registers 3

    new-array v0, p1, [Lcom/unionpay/tsmservice/result/ECashTopUpResult;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/result/ECashTopUpResult$1;->newArray(I)[Lcom/unionpay/tsmservice/result/ECashTopUpResult;

    move-result-object v0

    return-object v0
.end method
