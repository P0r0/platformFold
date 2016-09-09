.class public Lcom/duoku/platform/download/mode/DiffInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duoku/platform/download/mode/DiffInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public failedReason:I

.field public packageMode:Lcom/duoku/platform/download/PackageMode;

.field public patchPath:Ljava/lang/String;

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/duoku/platform/download/mode/DiffInfo$1;

    invoke-direct {v0}, Lcom/duoku/platform/download/mode/DiffInfo$1;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/mode/DiffInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/duoku/platform/download/PackageMode;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DiffInfo;->packageMode:Lcom/duoku/platform/download/PackageMode;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 42
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/DiffInfo;->success:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/duoku/platform/download/mode/DiffInfo;->failedReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DiffInfo;->patchPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DiffInfo;->packageMode:Lcom/duoku/platform/download/PackageMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    return-void

    .line 42
    :cond_19
    const/4 v0, 0x0

    goto :goto_6
.end method
