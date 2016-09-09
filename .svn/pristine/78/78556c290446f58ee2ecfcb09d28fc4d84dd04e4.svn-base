.class Lcom/duoku/platform/download/mode/DiffInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/mode/DiffInfo;
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
        "Lcom/duoku/platform/download/mode/DiffInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/duoku/platform/download/mode/DiffInfo;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 54
    new-instance v1, Lcom/duoku/platform/download/mode/DiffInfo;

    invoke-direct {v1}, Lcom/duoku/platform/download/mode/DiffInfo;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_29

    :goto_c
    iput-boolean v0, v1, Lcom/duoku/platform/download/mode/DiffInfo;->success:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/duoku/platform/download/mode/DiffInfo;->failedReason:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/mode/DiffInfo;->patchPath:Ljava/lang/String;

    .line 58
    const-class v0, Lcom/duoku/platform/download/PackageMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    iput-object v0, v1, Lcom/duoku/platform/download/mode/DiffInfo;->packageMode:Lcom/duoku/platform/download/PackageMode;

    .line 59
    return-object v1

    .line 55
    :cond_29
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(I)[Lcom/duoku/platform/download/mode/DiffInfo;
    .registers 3

    .prologue
    .line 65
    new-array v0, p1, [Lcom/duoku/platform/download/mode/DiffInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/mode/DiffInfo$1;->a(Landroid/os/Parcel;)Lcom/duoku/platform/download/mode/DiffInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/mode/DiffInfo$1;->a(I)[Lcom/duoku/platform/download/mode/DiffInfo;

    move-result-object v0

    return-object v0
.end method
