.class public Lmobisocial/osm/OsmIdentity;
.super Ljava/lang/Object;
.source "OsmIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobisocial/osm/OsmIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTITY_TYPE_EMAIL:I = 0x1

.field public static final IDENTITY_TYPE_FACEBOOK:I = 0x3

.field public static final IDENTITY_TYPE_PHONE:I = 0x2


# instance fields
.field public principal:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lmobisocial/osm/OsmIdentity$1;

    invoke-direct {v0}, Lmobisocial/osm/OsmIdentity$1;-><init>()V

    sput-object v0, Lmobisocial/osm/OsmIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobisocial/osm/OsmIdentity;->type:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/osm/OsmIdentity;->principal:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 34
    iget v0, p0, Lmobisocial/osm/OsmIdentity;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v0, p0, Lmobisocial/osm/OsmIdentity;->principal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    return-void
.end method
