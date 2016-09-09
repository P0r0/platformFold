.class final Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag$1;
.super Ljava/lang/Object;
.source "ParcelableLDPostTag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag$1;->createFromParcel(Landroid/os/Parcel;)Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 43
    new-instance v0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;-><init>(Landroid/os/Parcel;Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag$1;->newArray(I)[Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    return-object v0
.end method
