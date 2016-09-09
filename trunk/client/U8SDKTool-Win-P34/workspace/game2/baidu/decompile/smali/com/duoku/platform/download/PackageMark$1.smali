.class Lcom/duoku/platform/download/PackageMark$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/PackageMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/duoku/platform/download/PackageMark;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/duoku/platform/download/PackageMark;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 45
    new-instance v1, Lcom/duoku/platform/download/PackageMark;

    invoke-direct {v1}, Lcom/duoku/platform/download/PackageMark;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMark;->version:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/duoku/platform/download/PackageMark;->versionCode:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_27

    :goto_24
    iput-boolean v0, v1, Lcom/duoku/platform/download/PackageMark;->isDiffUpdate:Z

    .line 51
    return-object v1

    .line 50
    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public a(I)[Lcom/duoku/platform/download/PackageMark;
    .registers 3

    .prologue
    .line 57
    new-array v0, p1, [Lcom/duoku/platform/download/PackageMark;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/PackageMark$1;->a(Landroid/os/Parcel;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/PackageMark$1;->a(I)[Lcom/duoku/platform/download/PackageMark;

    move-result-object v0

    return-object v0
.end method
