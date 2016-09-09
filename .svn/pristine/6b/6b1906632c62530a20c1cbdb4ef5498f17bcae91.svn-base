.class public Lcom/duoku/platform/download/PackageMark;
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
            "Lcom/duoku/platform/download/PackageMark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public gameId:Ljava/lang/String;

.field public isDiffUpdate:Z

.field public packageName:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/duoku/platform/download/PackageMark$1;

    invoke-direct {v0}, Lcom/duoku/platform/download/PackageMark$1;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/PackageMark;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMark;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lcom/duoku/platform/download/PackageMark;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-boolean v0, p0, Lcom/duoku/platform/download/PackageMark;->isDiffUpdate:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    return-void

    .line 36
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method
