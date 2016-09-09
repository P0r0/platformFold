.class public Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
.super Ljava/lang/Object;
.source "ParcelableLDPostTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Tag:Ljava/lang/String;

.field TagType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag$1;

    invoke-direct {v0}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag$1;-><init>()V

    sput-object v0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->TagType:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->Tag:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmobisocial/longdan/LDProtocols$LDPostTag;)V
    .registers 3
    .param p1, "postTag"    # Lmobisocial/longdan/LDProtocols$LDPostTag;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostTag;->TagType:Ljava/lang/String;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->TagType:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->Tag:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->TagType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->TagType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->Tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
