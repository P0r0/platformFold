.class public Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAssociatedCardBalance:Lcom/unionpay/tsmservice/data/AssociatedCardBalance;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult$1;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult$1;-><init>()V

    sput-object v0, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/unionpay/tsmservice/data/AssociatedCardBalance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/data/AssociatedCardBalance;

    iput-object v0, p0, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;->mAssociatedCardBalance:Lcom/unionpay/tsmservice/data/AssociatedCardBalance;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAssociatedCardBalance()Lcom/unionpay/tsmservice/data/AssociatedCardBalance;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;->mAssociatedCardBalance:Lcom/unionpay/tsmservice/data/AssociatedCardBalance;

    return-object v0
.end method

.method public setAssociatedCardBalance(Lcom/unionpay/tsmservice/data/AssociatedCardBalance;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;->mAssociatedCardBalance:Lcom/unionpay/tsmservice/data/AssociatedCardBalance;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/tsmservice/result/GetAccountBalanceResult;->mAssociatedCardBalance:Lcom/unionpay/tsmservice/data/AssociatedCardBalance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
